import 'dart:convert';

import 'package:flutter/material.dart'
    show Durations, RefreshIndicator, SelectionArea;
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';
import 'package:uuid/v4.dart';
import 'package:veezo/api.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/domain/chat/chat_messages_notifier.dart';
import 'package:veezo/domain/chat/chat_provider.dart';
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
    final scrollController = useScrollController();

    final response = useValueNotifier<WebSocketResponse?>(null);
    final promptController = useTextEditingController();
    void cleanUp() {
      promptController.text = '';
      response.value = response.value?.copyWith(
        message: response.value?.message?.copyWith(text: ''),
      );
    }

    final socket = useValueNotifier<WebSocket?>(null);
    final chat = useValueNotifier<Chat?>(
      chatId == null
          ? null
          : (ref.read(chatProvider).value ?? []).firstWhere(
              (element) => element.id == chatId!,
            ),
    );

    final auth = ref.watch(authProvider);

    final chatMessageProvider = useValueNotifier(chatMessagesProvider(chatId));
    final messages = ref.watch(chatMessageProvider.value);
    final messagesNotifier = ref.watch(chatMessageProvider.value.notifier);

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

      final listener = socket.value!.messages.listen((event) {
        response.value = WebSocketResponse.fromJson(json.decode(event));
        chat.value ??= response.value?.chat;

        if (response.value?.status == StatusEnum.finished) {
          messagesNotifier.append(response.value!.message!);
          cleanUp();
        }

        if (!scrollController.position.isScrollingNotifier.value) {
          scrollController.jumpTo(scrollController.position.maxScrollExtent);
        }
      });
      return () {
        listener.cancel();
        socket.value!.close();
      };
    }, [auth]);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          headers: [
            HookBuilder(
              builder: (_) {
                useListenable(chat);
                return AppBar(
                  title: Text(chat.value?.title ?? t.chat.newChat),
                  leading: [
                    IconButton.ghost(
                      onPressed: () {
                        openDrawer(
                          context: context,
                          showDragHandle: false,
                          transformBackdrop: false,
                          barrierColor: Colors.black.scaleAlpha(0.5),
                          builder: (context) {
                            return ChatsHistory(chatId: chatId);
                          },
                          position: OverlayPosition.start,
                        );
                      },
                      icon: Icon(LucideIcons.menu),
                    ),
                    if (GoRouterState.of(context).fullPath !=
                        routePaths.chat.path)
                      IconButton.ghost(
                        onPressed: () => context.go(routePaths.chat.path),
                        icon: Icon(LucideIcons.messageCircle),
                      ),
                  ],
                  trailing: [
                    Button.text(
                      onPressed: () {
                        context.go(routePaths.creditsAndPlans);
                      },
                      child: Text(t.chat.credit),
                    ),
                  ],
                );
              },
            ),
          ],
          child: ValueListenableBuilder(
            valueListenable: response,
            builder: (context, value, child) => (messages.value ?? []).isEmpty
                ? _buildEmpty(context)
                : CustomScrollView(
                    controller: scrollController,
                    slivers:
                        [
                              SliverGap(24),
                              if ((messages.value ?? []).isNotEmpty)
                                SliverList.separated(
                                  itemCount: messages.value!.length,
                                  separatorBuilder: (context, index) => Gap(8),
                                  itemBuilder: (context, index) {
                                    final message = messages.value![index];

                                    if (message.role == RoleEnum.user) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                          top: index == 0 ? 0 : 40,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Card(
                                              filled: true,
                                              fillColor:
                                                  Colors.neutral.shade700,
                                              borderColor:
                                                  Colors.neutral.shade500,
                                              child: Text(message.text),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 8,
                                                horizontal: 16,
                                              ),
                                            ),
                                            Gap(4),
                                            IconButton.text(
                                              onPressed: () {
                                                Clipboard.setData(
                                                  ClipboardData(
                                                    text: message.text,
                                                  ),
                                                );
                                                showToast(
                                                  context: context,
                                                  location:
                                                      ToastLocation.topCenter,
                                                  showDuration:
                                                      Durations.extralong4 * 2,
                                                  builder: (context, overlay) {
                                                    return SurfaceCard(
                                                      child: Basic(
                                                        titleAlignment:
                                                            AlignmentDirectional
                                                                .centerStart,
                                                        title: Text(
                                                          t
                                                              .chat
                                                              .messageIsCopied,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              icon: Icon(
                                                LucideIcons.copy,
                                                size: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }

                                    return SelectionArea(
                                      child: GptMarkdown(
                                        key: ValueKey(value),
                                        textDirection: TextDirection.rtl,
                                        message.text,
                                      ),
                                    );
                                  },
                                ),

                              // Incoming response
                              ...[
                                SliverGap(8),
                                SliverToBoxAdapter(
                                  child: _IncomingResponse(response: value),
                                ),
                              ],
                              SliverGap(180),
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
        _BottomPromptBox(
          socket: socket.value,
          promptController: promptController,
          messagesNotifier: messagesNotifier,
          cleanUp: cleanUp,
          chatId: chatId,
        ),
      ],
    );
  }

  Column _buildEmpty(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          LucideIcons.lightbulb,
          size: 30,
          color: context.theme.colorScheme.mutedForeground,
        ),
        Gap(8),
        Text(t.chat.emptyIntro, textAlign: TextAlign.center).muted,
      ],
    );
  }
}

class _IncomingResponse extends StatelessWidget {
  const _IncomingResponse({this.response});

  final WebSocketResponse? response;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState:
          response?.status == StatusEnum.processing &&
              response?.message?.text == null
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: kDuration,
      firstChild: Align(alignment: Alignment.topRight, child: MLoading()),
      secondChild: AnimatedSwitcher(
        duration: kDuration,
        switchInCurve: kCurve,
        reverseDuration: Durations.short4 * 6,
        layoutBuilder: (currentChild, previousChildren) => Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            ...previousChildren,
            if (currentChild != null) currentChild,
          ],
        ),
        child: GptMarkdown(
          key: ValueKey(response),
          textDirection: TextDirection.rtl,
          response?.message?.text ?? '',
        ),
      ),
    );
  }
}

class _BottomPromptBox extends StatelessWidget {
  const _BottomPromptBox({
    required this.socket,
    required this.promptController,
    required this.cleanUp,
    required this.messagesNotifier,
    this.chatId,
  });

  final String? chatId;
  final WebSocket? socket;
  final TextEditingController promptController;
  final ChatMessagesNotifier messagesNotifier;
  final VoidCallback cleanUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10.0,
      ).copyWith(bottom: MediaQuery.viewInsetsOf(context).bottom + 10),
      child: Card(
        child: Form(
          onSubmit: (context, values) async {
            cleanUp();
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

            socket?.send(
              WebSocketRequestRequest(
                message: text,
                chatId: chatId,
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
                  controller: promptController,
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
    );
  }
}

class ChatsHistory extends HookConsumerWidget {
  const ChatsHistory({super.key, required this.chatId});

  final String? chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(chatProvider);
    final route = GoRouterState.of(context);

    useEffect(() {
      Future.delayed(Durations.short2, () => ref.invalidate(chatProvider));
      return null;
    }, []);

    return Container(
      padding: EdgeInsets.all(8),
      width: (MediaQuery.sizeOf(context).width * 0.8).clamp(0, 400),
      alignment: Alignment.center,
      child: RefreshIndicator(
        onRefresh: () => ref.refresh(chatProvider.future),
        child: chats.when(
          error: (error, stackTrace) {
            return Text("err");
          },
          loading: () {
            return CircularProgressIndicator();
          },
          data: (data) {
            return ListView.separated(
              itemCount: data.length + 1,
              separatorBuilder: (_, __) => Gap(8),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return NavigationLabel(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(t.chat.previousChats).muted,
                  );
                }
                final item = data[index - 1];
                return Button.ghost(
                  child: Text(item.title ?? 'بدون تیتر'),
                  alignment: AlignmentDirectional.centerStart,
                  onPressed: () {
                    if (chatId != item.id) {
                      while (context.canPop() &&
                          route.fullPath != routePaths.chat.path) {
                        context.pop();
                      }
                      context.go(routePaths.chat.detail(item.id));
                    }

                    closeDrawer(context);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
