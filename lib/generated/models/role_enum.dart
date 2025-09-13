// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'role_enum.mapper.dart';

/// * `user` - User.
/// * `assistant` - Assistant.
/// * `system` - System.
@MappableEnum(defaultValue: 'unknown')
enum RoleEnum {
  @MappableValue('user') 
  user,

  @MappableValue('assistant') 
  assistant,

  @MappableValue('system') 
  system,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<RoleEnum> get $valuesDefined => values.where((value) => value != RoleEnum.unknown).toList();
}
