// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'web_socket_request_request.mapper.dart';

@MappableClass()
class WebSocketRequestRequest with WebSocketRequestRequestMappable {

  const WebSocketRequestRequest({
    required this.prompt,
  });
  final String prompt;


  static WebSocketRequestRequest fromJson(Map<String, dynamic> json) => WebSocketRequestRequestMapper.ensureInitialized().decodeMap<WebSocketRequestRequest>(json);
}
