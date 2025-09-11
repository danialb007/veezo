// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'user.dart';

part 'verify.mapper.dart';

@MappableClass()
class Verify with VerifyMappable {

  const Verify({
    required this.access,
    required this.refresh,
    required this.user,
  });
  final String access;
  final String refresh;
  final User user;


  static Verify fromJson(Map<String, dynamic> json) => VerifyMapper.ensureInitialized().decodeMap<Verify>(json);
}
