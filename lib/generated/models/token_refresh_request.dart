// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'token_refresh_request.mapper.dart';

@MappableClass()
class TokenRefreshRequest with TokenRefreshRequestMappable {

  const TokenRefreshRequest({
    required this.refresh,
  });
  final String refresh;


  static TokenRefreshRequest fromJson(Map<String, dynamic> json) => TokenRefreshRequestMapper.ensureInitialized().decodeMap<TokenRefreshRequest>(json);
}
