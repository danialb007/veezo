// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'social_login.dart';

class SocialLoginMapper extends ClassMapperBase<SocialLogin> {
  SocialLoginMapper._();

  static SocialLoginMapper? _instance;
  static SocialLoginMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SocialLoginMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SocialLogin';

  static String? _$accessToken(SocialLogin v) => v.accessToken;
  static const Field<SocialLogin, String> _f$accessToken = Field(
    'accessToken',
    _$accessToken,
    key: r'access_token',
    opt: true,
  );
  static String? _$code(SocialLogin v) => v.code;
  static const Field<SocialLogin, String> _f$code = Field(
    'code',
    _$code,
    opt: true,
  );
  static String? _$idToken(SocialLogin v) => v.idToken;
  static const Field<SocialLogin, String> _f$idToken = Field(
    'idToken',
    _$idToken,
    key: r'id_token',
    opt: true,
  );

  @override
  final MappableFields<SocialLogin> fields = const {
    #accessToken: _f$accessToken,
    #code: _f$code,
    #idToken: _f$idToken,
  };

  static SocialLogin _instantiate(DecodingData data) {
    return SocialLogin(
      accessToken: data.dec(_f$accessToken),
      code: data.dec(_f$code),
      idToken: data.dec(_f$idToken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SocialLogin fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SocialLogin>(map);
  }

  static SocialLogin fromJsonString(String json) {
    return ensureInitialized().decodeJson<SocialLogin>(json);
  }
}

mixin SocialLoginMappable {
  String toJsonString() {
    return SocialLoginMapper.ensureInitialized().encodeJson<SocialLogin>(
      this as SocialLogin,
    );
  }

  Map<String, dynamic> toJson() {
    return SocialLoginMapper.ensureInitialized().encodeMap<SocialLogin>(
      this as SocialLogin,
    );
  }

  SocialLoginCopyWith<SocialLogin, SocialLogin, SocialLogin> get copyWith =>
      _SocialLoginCopyWithImpl<SocialLogin, SocialLogin>(
        this as SocialLogin,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SocialLoginMapper.ensureInitialized().stringifyValue(
      this as SocialLogin,
    );
  }

  @override
  bool operator ==(Object other) {
    return SocialLoginMapper.ensureInitialized().equalsValue(
      this as SocialLogin,
      other,
    );
  }

  @override
  int get hashCode {
    return SocialLoginMapper.ensureInitialized().hashValue(this as SocialLogin);
  }
}

extension SocialLoginValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SocialLogin, $Out> {
  SocialLoginCopyWith<$R, SocialLogin, $Out> get $asSocialLogin =>
      $base.as((v, t, t2) => _SocialLoginCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SocialLoginCopyWith<$R, $In extends SocialLogin, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? code, String? idToken});
  SocialLoginCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SocialLoginCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SocialLogin, $Out>
    implements SocialLoginCopyWith<$R, SocialLogin, $Out> {
  _SocialLoginCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SocialLogin> $mapper =
      SocialLoginMapper.ensureInitialized();
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
  SocialLogin $make(CopyWithData data) => SocialLogin(
    accessToken: data.get(#accessToken, or: $value.accessToken),
    code: data.get(#code, or: $value.code),
    idToken: data.get(#idToken, or: $value.idToken),
  );

  @override
  SocialLoginCopyWith<$R2, SocialLogin, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SocialLoginCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

