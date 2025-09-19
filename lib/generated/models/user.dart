// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {

  const User({
    required this.id,
    required this.email,
    this.username,
    this.image,
    this.firstName,
    this.lastName,
    this.credits,
  });
  final int id;
  final String email;
  final String? username;
  final String? image;
  @MappableField(key: 'first_name')
  final String? firstName;
  @MappableField(key: 'last_name')
  final String? lastName;
  final int? credits;


  static User fromJson(Map<String, dynamic> json) => UserMapper.ensureInitialized().decodeMap<User>(json);
}
