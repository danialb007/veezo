// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'verify.dart';

class VerifyMapper extends ClassMapperBase<Verify> {
  VerifyMapper._();

  static VerifyMapper? _instance;
  static VerifyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerifyMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Verify';

  static String _$access(Verify v) => v.access;
  static const Field<Verify, String> _f$access = Field('access', _$access);
  static String _$refresh(Verify v) => v.refresh;
  static const Field<Verify, String> _f$refresh = Field('refresh', _$refresh);
  static User _$user(Verify v) => v.user;
  static const Field<Verify, User> _f$user = Field('user', _$user);

  @override
  final MappableFields<Verify> fields = const {
    #access: _f$access,
    #refresh: _f$refresh,
    #user: _f$user,
  };

  static Verify _instantiate(DecodingData data) {
    return Verify(
      access: data.dec(_f$access),
      refresh: data.dec(_f$refresh),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Verify fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Verify>(map);
  }

  static Verify fromJsonString(String json) {
    return ensureInitialized().decodeJson<Verify>(json);
  }
}

mixin VerifyMappable {
  String toJsonString() {
    return VerifyMapper.ensureInitialized().encodeJson<Verify>(this as Verify);
  }

  Map<String, dynamic> toJson() {
    return VerifyMapper.ensureInitialized().encodeMap<Verify>(this as Verify);
  }

  VerifyCopyWith<Verify, Verify, Verify> get copyWith =>
      _VerifyCopyWithImpl<Verify, Verify>(this as Verify, $identity, $identity);
  @override
  String toString() {
    return VerifyMapper.ensureInitialized().stringifyValue(this as Verify);
  }

  @override
  bool operator ==(Object other) {
    return VerifyMapper.ensureInitialized().equalsValue(this as Verify, other);
  }

  @override
  int get hashCode {
    return VerifyMapper.ensureInitialized().hashValue(this as Verify);
  }
}

extension VerifyValueCopy<$R, $Out> on ObjectCopyWith<$R, Verify, $Out> {
  VerifyCopyWith<$R, Verify, $Out> get $asVerify =>
      $base.as((v, t, t2) => _VerifyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VerifyCopyWith<$R, $In extends Verify, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  $R call({String? access, String? refresh, User? user});
  VerifyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VerifyCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Verify, $Out>
    implements VerifyCopyWith<$R, Verify, $Out> {
  _VerifyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Verify> $mapper = VerifyMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? access, String? refresh, User? user}) => $apply(
    FieldCopyWithData({
      if (access != null) #access: access,
      if (refresh != null) #refresh: refresh,
      if (user != null) #user: user,
    }),
  );
  @override
  Verify $make(CopyWithData data) => Verify(
    access: data.get(#access, or: $value.access),
    refresh: data.get(#refresh, or: $value.refresh),
    user: data.get(#user, or: $value.user),
  );

  @override
  VerifyCopyWith<$R2, Verify, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VerifyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

