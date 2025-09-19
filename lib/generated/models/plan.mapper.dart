// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'plan.dart';

class PlanMapper extends ClassMapperBase<Plan> {
  PlanMapper._();

  static PlanMapper? _instance;
  static PlanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Plan';

  static String _$id(Plan v) => v.id;
  static const Field<Plan, String> _f$id = Field('id', _$id);
  static String _$title(Plan v) => v.title;
  static const Field<Plan, String> _f$title = Field('title', _$title);
  static String _$description(Plan v) => v.description;
  static const Field<Plan, String> _f$description = Field(
    'description',
    _$description,
  );
  static int? _$price(Plan v) => v.price;
  static const Field<Plan, int> _f$price = Field('price', _$price, opt: true);
  static int? _$credits(Plan v) => v.credits;
  static const Field<Plan, int> _f$credits = Field(
    'credits',
    _$credits,
    opt: true,
  );
  static bool? _$active(Plan v) => v.active;
  static const Field<Plan, bool> _f$active = Field(
    'active',
    _$active,
    opt: true,
  );

  @override
  final MappableFields<Plan> fields = const {
    #id: _f$id,
    #title: _f$title,
    #description: _f$description,
    #price: _f$price,
    #credits: _f$credits,
    #active: _f$active,
  };

  static Plan _instantiate(DecodingData data) {
    return Plan(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      description: data.dec(_f$description),
      price: data.dec(_f$price),
      credits: data.dec(_f$credits),
      active: data.dec(_f$active),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Plan fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Plan>(map);
  }

  static Plan fromJsonString(String json) {
    return ensureInitialized().decodeJson<Plan>(json);
  }
}

mixin PlanMappable {
  String toJsonString() {
    return PlanMapper.ensureInitialized().encodeJson<Plan>(this as Plan);
  }

  Map<String, dynamic> toJson() {
    return PlanMapper.ensureInitialized().encodeMap<Plan>(this as Plan);
  }

  PlanCopyWith<Plan, Plan, Plan> get copyWith =>
      _PlanCopyWithImpl<Plan, Plan>(this as Plan, $identity, $identity);
  @override
  String toString() {
    return PlanMapper.ensureInitialized().stringifyValue(this as Plan);
  }

  @override
  bool operator ==(Object other) {
    return PlanMapper.ensureInitialized().equalsValue(this as Plan, other);
  }

  @override
  int get hashCode {
    return PlanMapper.ensureInitialized().hashValue(this as Plan);
  }
}

extension PlanValueCopy<$R, $Out> on ObjectCopyWith<$R, Plan, $Out> {
  PlanCopyWith<$R, Plan, $Out> get $asPlan =>
      $base.as((v, t, t2) => _PlanCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanCopyWith<$R, $In extends Plan, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? title,
    String? description,
    int? price,
    int? credits,
    bool? active,
  });
  PlanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlanCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Plan, $Out>
    implements PlanCopyWith<$R, Plan, $Out> {
  _PlanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Plan> $mapper = PlanMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? title,
    String? description,
    Object? price = $none,
    Object? credits = $none,
    Object? active = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != null) #title: title,
      if (description != null) #description: description,
      if (price != $none) #price: price,
      if (credits != $none) #credits: credits,
      if (active != $none) #active: active,
    }),
  );
  @override
  Plan $make(CopyWithData data) => Plan(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    description: data.get(#description, or: $value.description),
    price: data.get(#price, or: $value.price),
    credits: data.get(#credits, or: $value.credits),
    active: data.get(#active, or: $value.active),
  );

  @override
  PlanCopyWith<$R2, Plan, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

