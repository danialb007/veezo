// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'chat.mapper.dart';

@MappableClass()
class Chat with ChatMappable {

  const Chat({
    required this.id,
    required this.created,
    required this.modified,
    this.title,
  });
  final String id;
  final DateTime created;
  final DateTime modified;
  final String? title;


  static Chat fromJson(Map<String, dynamic> json) => ChatMapper.ensureInitialized().decodeMap<Chat>(json);
}
