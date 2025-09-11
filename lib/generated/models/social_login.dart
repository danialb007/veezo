// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'social_login.mapper.dart';

@MappableClass()
class SocialLogin with SocialLoginMappable {

  const SocialLogin({
    this.accessToken,
    this.code,
    this.idToken,
  });
  @MappableField(key: 'access_token')
  final String? accessToken;
  final String? code;
  @MappableField(key: 'id_token')
  final String? idToken;


  static SocialLogin fromJson(Map<String, dynamic> json) => SocialLoginMapper.ensureInitialized().decodeMap<SocialLogin>(json);
}
