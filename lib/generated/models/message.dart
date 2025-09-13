// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'role_enum.dart';

part 'message.mapper.dart';

@MappableClass()
class Message with MessageMappable {

  const Message({
    required this.id,
    required this.created,
    required this.modified,
    required this.role,
    required this.text,
  });
  final String id;
  final DateTime created;
  final DateTime modified;
  final RoleEnum role;
  final String text;


  static Message fromJson(Map<String, dynamic> json) => MessageMapper.ensureInitialized().decodeMap<Message>(json);
}
