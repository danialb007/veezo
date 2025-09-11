// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'message.mapper.dart';

@MappableClass()
class Message with MessageMappable {

  const Message({
    this.id,
    this.text,
  });
  final String? id;
  final String? text;


  static Message fromJson(Map<String, dynamic> json) => MessageMapper.ensureInitialized().decodeMap<Message>(json);
}
