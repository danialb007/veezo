// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'social_login_request.dart';

class SocialLoginRequestMapper extends ClassMapperBase<SocialLoginRequest> {
  SocialLoginRequestMapper._();

  static SocialLoginRequestMapper? _instance;
  static SocialLoginRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SocialLoginRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SocialLoginRequest';

  static String? _$accessToken(SocialLoginRequest v) => v.accessToken;
  static const Field<SocialLoginRequest, String> _f$accessToken = Field(
    'accessToken',
    _$accessToken,
    key: r'access_token',
    opt: true,
  );
  static String? _$code(SocialLoginRequest v) => v.code;
  static const Field<SocialLoginRequest, String> _f$code = Field(
    'code',
    _$code,
    opt: true,
  );
  static String? _$idToken(SocialLoginRequest v) => v.idToken;
  static const Field<SocialLoginRequest, String> _f$idToken = Field(
    'idToken',
    _$idToken,
    key: r'id_token',
    opt: true,
  );

  @override
  final MappableFields<SocialLoginRequest> fields = const {
    #accessToken: _f$accessToken,
    #code: _f$code,
    #idToken: _f$idToken,
  };

  static SocialLoginRequest _instantiate(DecodingData data) {
    return SocialLoginRequest(
      accessToken: data.dec(_f$accessToken),
      code: data.dec(_f$code),
      idToken: data.dec(_f$idToken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SocialLoginRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SocialLoginRequest>(map);
  }

  static SocialLoginRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<SocialLoginRequest>(json);
  }
}

mixin SocialLoginRequestMappable {
  String toJsonString() {
    return SocialLoginRequestMapper.ensureInitialized()
        .encodeJson<SocialLoginRequest>(this as SocialLoginRequest);
  }

  Map<String, dynamic> toJson() {
    return SocialLoginRequestMapper.ensureInitialized()
        .encodeMap<SocialLoginRequest>(this as SocialLoginRequest);
  }

  SocialLoginRequestCopyWith<
    SocialLoginRequest,
    SocialLoginRequest,
    SocialLoginRequest
  >
  get copyWith =>
      _SocialLoginRequestCopyWithImpl<SocialLoginRequest, SocialLoginRequest>(
        this as SocialLoginRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SocialLoginRequestMapper.ensureInitialized().stringifyValue(
      this as SocialLoginRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return SocialLoginRequestMapper.ensureInitialized().equalsValue(
      this as SocialLoginRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return SocialLoginRequestMapper.ensureInitialized().hashValue(
      this as SocialLoginRequest,
    );
  }
}

extension SocialLoginRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SocialLoginRequest, $Out> {
  SocialLoginRequestCopyWith<$R, SocialLoginRequest, $Out>
  get $asSocialLoginRequest => $base.as(
    (v, t, t2) => _SocialLoginRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SocialLoginRequestCopyWith<
  $R,
  $In extends SocialLoginRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? code, String? idToken});
  SocialLoginRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SocialLoginRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SocialLoginRequest, $Out>
    implements SocialLoginRequestCopyWith<$R, SocialLoginRequest, $Out> {
  _SocialLoginRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SocialLoginRequest> $mapper =
      SocialLoginRequestMapper.ensureInitialized();
  @override
  $R call({
    Object? accessToken = $none,
    Object? code = $none,
    Object? idToken = $none,
  }) => $apply(
    FieldCopyWithData({
      if (accessToken != $none) #accessToken: accessToken,
      if (code != $none) #code: code,
      if (idToken != $none) #idToken: idToken,
    }),
  );
  @override
  SocialLoginRequest $make(CopyWithData data) => SocialLoginRequest(
    accessToken: data.get(#accessToken, or: $value.accessToken),
    code: data.get(#code, or: $value.code),
    idToken: data.get(#idToken, or: $value.idToken),
  );

  @override
  SocialLoginRequestCopyWith<$R2, SocialLoginRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SocialLoginRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

