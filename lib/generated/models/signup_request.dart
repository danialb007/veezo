// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'signup_request.mapper.dart';

@MappableClass()
class SignupRequest with SignupRequestMappable {

  const SignupRequest({
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });
  final String email;
  final String password;
  @MappableField(key: 'password_confirm')
  final String passwordConfirm;


  static SignupRequest fromJson(Map<String, dynamic> json) => SignupRequestMapper.ensureInitialized().decodeMap<SignupRequest>(json);
}
