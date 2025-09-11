// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'user_request.dart';

part 'verify_request.mapper.dart';

@MappableClass()
class VerifyRequest with VerifyRequestMappable {

  const VerifyRequest({
    required this.code,
    required this.userId,
    required this.user,
  });
  final String code;
  @MappableField(key: 'user_id')
  final String userId;
  final UserRequest user;


  static VerifyRequest fromJson(Map<String, dynamic> json) => VerifyRequestMapper.ensureInitialized().decodeMap<VerifyRequest>(json);
}
