// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'login_request.mapper.dart';

@MappableClass()
class LoginRequest with LoginRequestMappable {

  const LoginRequest({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;


  static LoginRequest fromJson(Map<String, dynamic> json) => LoginRequestMapper.ensureInitialized().decodeMap<LoginRequest>(json);
}
