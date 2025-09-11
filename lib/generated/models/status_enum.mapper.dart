// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'status_enum.dart';

class StatusEnumMapper extends EnumMapper<StatusEnum> {
  StatusEnumMapper._();

  static StatusEnumMapper? _instance;
  static StatusEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StatusEnumMapper._());
    }
    return _instance!;
  }

  static StatusEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  StatusEnum decode(dynamic value) {
    switch (value) {
      case 'processing':
        return StatusEnum.processing;
      case 'started':
        return StatusEnum.started;
      case 'errored':
        return StatusEnum.errored;
      case 'finished':
        return StatusEnum.finished;
      case 'unknown':
        return StatusEnum.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(StatusEnum self) {
    switch (self) {
      case StatusEnum.processing:
        return 'processing';
      case StatusEnum.started:
        return 'started';
      case StatusEnum.errored:
        return 'errored';
      case StatusEnum.finished:
        return 'finished';
      case StatusEnum.unknown:
        return 'unknown';
    }
  }
}

extension StatusEnumMapperExtension on StatusEnum {
  dynamic toValue() {
    StatusEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<StatusEnum>(this);
  }
}

