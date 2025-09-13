// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/message.dart';
import '../models/web_socket_request_request.dart';
import '../models/web_socket_response.dart';

part 'ai_client.g.dart';

@RestApi()
abstract class AiClient {
  factory AiClient(Dio dio, {String? baseUrl}) = _AiClient;

  /// Dummy view to provide type to client generation
  @POST('/api/v1/ai/generative_message/')
  Future<WebSocketResponse> aiGenerativeMessageCreate({
    @Body() required WebSocketRequestRequest body,
  });

  @GET('/api/v1/ai/message/')
  Future<List<Message>> aiMessageList({
    @Path('chat_id') required String chatId,
  });
}
