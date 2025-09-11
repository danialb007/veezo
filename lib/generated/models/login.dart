// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'user.dart';

part 'login.mapper.dart';

@MappableClass()
class Login with LoginMappable {

  const Login({
    required this.access,
    required this.refresh,
    required this.user,
  });
  final String access;
  final String refresh;
  final User user;


  static Login fromJson(Map<String, dynamic> json) => LoginMapper.ensureInitialized().decodeMap<Login>(json);
}
