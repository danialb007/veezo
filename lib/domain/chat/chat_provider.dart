import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:veezo/api.dart';

final chatProvider = FutureProvider((ref) async {
  return await Api.I.ai.aiChatList();
});
