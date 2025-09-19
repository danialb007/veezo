// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'plan.mapper.dart';

@MappableClass()
class Plan with PlanMappable {

  const Plan({
    required this.id,
    required this.title,
    required this.description,
    this.price,
    this.credits,
    this.active,
  });
  final String id;
  final String title;
  final String description;
  final int? price;
  final int? credits;
  final bool? active;


  static Plan fromJson(Map<String, dynamic> json) => PlanMapper.ensureInitialized().decodeMap<Plan>(json);
}
