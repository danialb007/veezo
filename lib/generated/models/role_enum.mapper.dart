// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'role_enum.dart';

class RoleEnumMapper extends EnumMapper<RoleEnum> {
  RoleEnumMapper._();

  static RoleEnumMapper? _instance;
  static RoleEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleEnumMapper._());
    }
    return _instance!;
  }

  static RoleEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RoleEnum decode(dynamic value) {
    switch (value) {
      case 'user':
        return RoleEnum.user;
      case 'assistant':
        return RoleEnum.assistant;
      case 'system':
        return RoleEnum.system;
      case 'unknown':
        return RoleEnum.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RoleEnum self) {
    switch (self) {
      case RoleEnum.user:
        return 'user';
      case RoleEnum.assistant:
        return 'assistant';
      case RoleEnum.system:
        return 'system';
      case RoleEnum.unknown:
        return 'unknown';
    }
  }
}

extension RoleEnumMapperExtension on RoleEnum {
  dynamic toValue() {
    RoleEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RoleEnum>(this);
  }
}

