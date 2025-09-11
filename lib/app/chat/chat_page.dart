import 'dart:convert';

import 'package:flutter/material.dart' show Durations;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/generated/models/status_enum.dart';
import 'package:veezo/generated/models/web_socket_request_request.dart';
import 'package:veezo/generated/models/web_socket_response.dart';
import 'package:veezo/presentation/widgets/loading.dart';
import 'package:veezo/routes.dart';
import 'package:veezo/utils/constants.dart';
import 'package:web_socket_client/web_socket_client.dart';

final _textKey = const TextFieldKey(#text);

class ChatPage extends HookConsumerWidget {
  const ChatPage({super.key, this.chatId});

  final String? chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = useValueNotifier<WebSocketResponse?>(null);
    final messageStream = useStreamController();
    final socket = useValueNotifier<WebSocket?>(null);
    final auth = ref.watch(authProvider);

    useEffect(() {
      if (!auth.hasValue) {
        return () {};
      }

      if ((auth.value?.refresh ?? '').isEmpty ||
          JwtDecoder.isExpired(auth.value?.refresh ?? '')) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          router.go(routePaths.auth.login);
        });
        return () {};
      }

      socket.value = WebSocket(
        Uri.parse(
          'ws://localhost:8000/ws/generative_message/?access_token=${auth.value!.access}',
        ),
      );

      messageStream.addStream(socket.value!.messages);
      messageStream.stream.listen((event) {
        response.value = WebSocketResponse.fromJson(json.decode(event));
      });
      return () {
        messageStream.close();
        socket.value!.close();
      };
    }, [auth]);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          headers: [
            AppBar(
              title: Text("data"),
              leading: [
                IconButton.ghost(
                  onPressed: () {},
                  icon: Icon(LucideIcons.menu),
                ),
              ],
              trailing: [Button.text(onPressed: () {}, child: Text("اعتبار"))],
            ),
          ],
          child: ValueListenableBuilder(
            valueListenable: response,
            builder: (context, value, child) => CustomScrollView(
              slivers:
                  [
                        SliverToBoxAdapter(child: Gap(24)),
                        if (value != null)
                          SliverToBoxAdapter(
                            child: AnimatedCrossFade(
                              crossFadeState:
                                  value.status == StatusEnum.processing &&
                                      value.message?.text == null
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: kDuration,
                              firstChild: Align(
                                alignment: Alignment.topRight,
                                child: MLoading(),
                              ),
                              secondChild: AnimatedSwitcher(
                                duration: kDuration,
                                switchInCurve: kCurve,
                                reverseDuration: Durations.short4 * 6,
                                layoutBuilder:
                                    (currentChild, previousChildren) => Stack(
                                      alignment: Alignment.topLeft,
                                      children: <Widget>[
                                        ...previousChildren,
                                        if (currentChild != null) currentChild,
                                      ],
                                    ),
                                child: GptMarkdown(
                                  key: ValueKey(value),
                                  value.message?.text ?? '',
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          ),
                        if (value == null)
                          SliverFillRemaining(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(LucideIcons.lightbulb),
                                Gap(8),
                                Text("data"),
                                Text("data"),
                              ],
                            ),
                          ),
                        SliverToBoxAdapter(child: Gap(180)),
                      ]
                      .map(
                        (e) => SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          sliver: e,
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Form(
              onSubmit: (context, values) async {
                response.value = null;
                socket.value?.send(
                  WebSocketRequestRequest(
                    prompt: values[_textKey],
                  ).toJsonString(),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormField(
                    key: _textKey,
                    label: SizedBox(),
                    validator: NotEmptyValidator(),
                    showErrors: {},
                    child: TextField(
                      filled: false,
                      decoration: BoxDecoration(color: Colors.transparent),
                      border: Border.all(color: Colors.transparent),
                      padding: EdgeInsets.all(2),
                      minLines: 1,
                      maxLines: null,
                      textDirection: TextDirection.rtl,
                      placeholder: Text(
                        "سناریو راجب چی میخوای؟",
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Toggle(
                        value: true,
                        enabled: true,
                        style: ButtonStyle.card(),
                        child: Row(
                          children: [
                            Icon(BootstrapIcons.calendar3, size: 16),
                            Gap(8),
                            Text("تقویم محتوایی"),
                          ],
                        ),
                      ),
                      Spacer(),
                      FormErrorBuilder(
                        builder: (context, errors, child) {
                          return IconButton.primary(
                            onPressed: errors.isNotEmpty
                                ? null
                                : () {
                                    context.submitForm();
                                  },
                            icon: Icon(
                              BootstrapIcons.arrowUpShort,
                              size: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: ButtonShape.circle,
                            density: ButtonDensity.iconDense,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
