// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'message.dart';
import 'status_enum.dart';

part 'web_socket_response.mapper.dart';

@MappableClass()
class WebSocketResponse with WebSocketResponseMappable {

  const WebSocketResponse({
    required this.status,
    this.message,
    this.error,
  });
  final StatusEnum status;
  final Message? message;
  final String? error;


  static WebSocketResponse fromJson(Map<String, dynamic> json) => WebSocketResponseMapper.ensureInitialized().decodeMap<WebSocketResponse>(json);
}
