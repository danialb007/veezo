import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:veezo/api.dart';
import 'package:veezo/generated/models/message.dart';

class ChatMessagesNotifier
    extends AutoDisposeFamilyAsyncNotifier<List<Message>, String?> {
  @override
  FutureOr<List<Message>> build(String? chatId) async {
    if (chatId == null) {
      // New chat
      return [];
    }
    return await getMessages(chatId);
  }

  Future<List<Message>> getMessages(String chatId) async {
    try {
      final messages = await Api.I.ai.aiMessageList(chatId: chatId);
      return messages;
    } catch (e) {
      return [];
    }
  }

  void append(Message message) {
    state = AsyncData([...(state.value ?? []), message]);
  }
}

final chatMessagesProvider = AsyncNotifierProvider.family
    .autoDispose<ChatMessagesNotifier, List<Message>, String?>(
      ChatMessagesNotifier.new,
    );
