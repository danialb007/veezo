// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'chat.dart';
import 'message.dart';
import 'status_enum.dart';

part 'web_socket_response.mapper.dart';

@MappableClass()
class WebSocketResponse with WebSocketResponseMappable {

  const WebSocketResponse({
    required this.status,
    this.message,
    this.chat,
    this.error,
  });
  final StatusEnum status;
  final Message? message;
  final Chat? chat;
  final String? error;


  static WebSocketResponse fromJson(Map<String, dynamic> json) => WebSocketResponseMapper.ensureInitialized().decodeMap<WebSocketResponse>(json);
}
