// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'patched_user_request.mapper.dart';

@MappableClass()
class PatchedUserRequest with PatchedUserRequestMappable {

  const PatchedUserRequest({
    this.username,
    this.image,
    this.firstName,
    this.lastName,
  });
  final String? username;
  final String? image;
  @MappableField(key: 'first_name')
  final String? firstName;
  @MappableField(key: 'last_name')
  final String? lastName;


  static PatchedUserRequest fromJson(Map<String, dynamic> json) => PatchedUserRequestMapper.ensureInitialized().decodeMap<PatchedUserRequest>(json);
}
