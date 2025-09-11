// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'token_refresh.mapper.dart';

@MappableClass()
class TokenRefresh with TokenRefreshMappable {

  const TokenRefresh({
    required this.access,
    required this.refresh,
  });
  final String access;
  final String refresh;


  static TokenRefresh fromJson(Map<String, dynamic> json) => TokenRefreshMapper.ensureInitialized().decodeMap<TokenRefresh>(json);
}
