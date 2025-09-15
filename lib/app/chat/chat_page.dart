import 'dart:convert';

import 'package:flutter/material.dart' show Durations;
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:uuid/v4.dart';
import 'package:veezo/api.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/domain/chat/chat_messages_notifier.dart';
import 'package:veezo/generated/export.dart';
import 'package:veezo/i18n/strings.g.dart';
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

    final scrollController = useScrollController();

    final chat = useValueNotifier<Chat?>(
      chatId == null
          ? null
          : Chat(
              id: chatId ?? '',
              created: DateTime.now(),
              modified: DateTime.now(),
            ),
    );

    final messages = ref.watch(chatMessagesProvider(chat.value?.id));
    final messagesNotifier = ref.watch(
      chatMessagesProvider(chat.value?.id).notifier,
    );

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
          '${Api.baseWebsocketUrl}/ws/generative_message/?access_token=${auth.value!.access}',
        ),
      );

      messageStream.addStream(socket.value!.messages);
      messageStream.stream.listen((event) {
        response.value = WebSocketResponse.fromJson(json.decode(event));
        chat.value = response.value?.chat;

        if (response.value?.status == StatusEnum.finished) {
          messagesNotifier.append(response.value!.message!);
          response.value = response.value?.copyWith(
            message: response.value?.message?.copyWith(text: ''),
          );
        }

        if (!scrollController.position.isScrollingNotifier.value) {
          scrollController.jumpTo(scrollController.position.maxScrollExtent);
        }
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
            HookBuilder(
              builder: (context) {
                useListenable(chat);
                return AppBar(
                  title: Text(chat.value?.title ?? t.chat.newChat),
                  leading: [
                    IconButton.ghost(
                      onPressed: () {},
                      icon: Icon(LucideIcons.menu),
                    ),
                  ],
                  trailing: [
                    Button.text(onPressed: () {}, child: Text(t.chat.credit)),
                  ],
                );
              },
            ),
          ],
          child: ValueListenableBuilder(
            valueListenable: response,
            builder: (context, value, child) => CustomScrollView(
              controller: scrollController,
              slivers:
                  [
                        SliverToBoxAdapter(child: Gap(24)),
                        if ((messages.value ?? []).isNotEmpty)
                          SliverList.separated(
                            itemCount: messages.value!.length,
                            separatorBuilder: (context, index) => Gap(8),
                            itemBuilder: (context, index) {
                              final message = messages.value![index];

                              if (message.role == RoleEnum.user) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                        filled: true,
                                        fillColor: Colors.neutral.shade700,
                                        borderColor: Colors.neutral.shade500,
                                        child: Text(message.text),
                                      ),
                                      Gap(4),
                                      IconButton.text(
                                        onPressed: () {
                                          Clipboard.setData(
                                            ClipboardData(text: message.text),
                                          );
                                          showToast(
                                            context: context,
                                            location: ToastLocation.topCenter,
                                            showDuration:
                                                Durations.extralong4 * 2,
                                            builder: (context, overlay) {
                                              return SurfaceCard(
                                                child: Basic(
                                                  title: Text(
                                                    t.chat.messageIsCopied,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(LucideIcons.copy, size: 16),
                                      ),
                                    ],
                                  ),
                                );
                              }

                              return GptMarkdown(
                                key: ValueKey(value),
                                textDirection: TextDirection.rtl,
                                message.text,
                              );
                            },
                          ),
                        if (value != null) ...[
                          SliverGap(8),
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
                                  textDirection: TextDirection.rtl,
                                  value.message?.text ?? '',
                                ),
                              ),
                            ),
                          ),
                        ],
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
                final text = values[_textKey];

                messagesNotifier.append(
                  Message(
                    id: UuidV4().generate(),
                    created: DateTime.now(),
                    modified: DateTime.now(),
                    role: RoleEnum.user,
                    text: text,
                  ),
                );

                socket.value?.send(
                  WebSocketRequestRequest(
                    message: text,
                    chatId: chat.value?.id,
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
                      placeholder: Text(t.chat.writeAScenarioAbout),
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
                            Text(t.chat.contentCalendar),
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
