// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'status_enum.mapper.dart';

/// * `processing` - processing.
/// * `started` - started.
/// * `errored` - errored.
/// * `finished` - finished.
@MappableEnum(defaultValue: 'unknown')
enum StatusEnum {
  @MappableValue('processing') 
  processing,

  @MappableValue('started') 
  started,

  @MappableValue('errored') 
  errored,

  @MappableValue('finished') 
  finished,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<StatusEnum> get $valuesDefined => values.where((value) => value != StatusEnum.unknown).toList();
}
