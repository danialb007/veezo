// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'verify_request.dart';

class VerifyRequestMapper extends ClassMapperBase<VerifyRequest> {
  VerifyRequestMapper._();

  static VerifyRequestMapper? _instance;
  static VerifyRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerifyRequestMapper._());
      UserRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerifyRequest';

  static String _$code(VerifyRequest v) => v.code;
  static const Field<VerifyRequest, String> _f$code = Field('code', _$code);
  static String _$userId(VerifyRequest v) => v.userId;
  static const Field<VerifyRequest, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static UserRequest _$user(VerifyRequest v) => v.user;
  static const Field<VerifyRequest, UserRequest> _f$user = Field(
    'user',
    _$user,
  );

  @override
  final MappableFields<VerifyRequest> fields = const {
    #code: _f$code,
    #userId: _f$userId,
    #user: _f$user,
  };

  static VerifyRequest _instantiate(DecodingData data) {
    return VerifyRequest(
      code: data.dec(_f$code),
      userId: data.dec(_f$userId),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VerifyRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerifyRequest>(map);
  }

  static VerifyRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<VerifyRequest>(json);
  }
}

mixin VerifyRequestMappable {
  String toJsonString() {
    return VerifyRequestMapper.ensureInitialized().encodeJson<VerifyRequest>(
      this as VerifyRequest,
    );
  }

  Map<String, dynamic> toJson() {
    return VerifyRequestMapper.ensureInitialized().encodeMap<VerifyRequest>(
      this as VerifyRequest,
    );
  }

  VerifyRequestCopyWith<VerifyRequest, VerifyRequest, VerifyRequest>
  get copyWith => _VerifyRequestCopyWithImpl<VerifyRequest, VerifyRequest>(
    this as VerifyRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return VerifyRequestMapper.ensureInitialized().stringifyValue(
      this as VerifyRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return VerifyRequestMapper.ensureInitialized().equalsValue(
      this as VerifyRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return VerifyRequestMapper.ensureInitialized().hashValue(
      this as VerifyRequest,
    );
  }
}

extension VerifyRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerifyRequest, $Out> {
  VerifyRequestCopyWith<$R, VerifyRequest, $Out> get $asVerifyRequest =>
      $base.as((v, t, t2) => _VerifyRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VerifyRequestCopyWith<$R, $In extends VerifyRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserRequestCopyWith<$R, UserRequest, UserRequest> get user;
  $R call({String? code, String? userId, UserRequest? user});
  VerifyRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VerifyRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerifyRequest, $Out>
    implements VerifyRequestCopyWith<$R, VerifyRequest, $Out> {
  _VerifyRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerifyRequest> $mapper =
      VerifyRequestMapper.ensureInitialized();
  @override
  UserRequestCopyWith<$R, UserRequest, UserRequest> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? code, String? userId, UserRequest? user}) => $apply(
    FieldCopyWithData({
      if (code != null) #code: code,
      if (userId != null) #userId: userId,
      if (user != null) #user: user,
    }),
  );
  @override
  VerifyRequest $make(CopyWithData data) => VerifyRequest(
    code: data.get(#code, or: $value.code),
    userId: data.get(#userId, or: $value.userId),
    user: data.get(#user, or: $value.user),
  );

  @override
  VerifyRequestCopyWith<$R2, VerifyRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VerifyRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

