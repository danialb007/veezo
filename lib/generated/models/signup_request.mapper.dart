// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'signup_request.dart';

class SignupRequestMapper extends ClassMapperBase<SignupRequest> {
  SignupRequestMapper._();

  static SignupRequestMapper? _instance;
  static SignupRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignupRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SignupRequest';

  static String _$email(SignupRequest v) => v.email;
  static const Field<SignupRequest, String> _f$email = Field('email', _$email);
  static String _$password(SignupRequest v) => v.password;
  static const Field<SignupRequest, String> _f$password = Field(
    'password',
    _$password,
  );
  static String _$passwordConfirm(SignupRequest v) => v.passwordConfirm;
  static const Field<SignupRequest, String> _f$passwordConfirm = Field(
    'passwordConfirm',
    _$passwordConfirm,
    key: r'password_confirm',
  );

  @override
  final MappableFields<SignupRequest> fields = const {
    #email: _f$email,
    #password: _f$password,
    #passwordConfirm: _f$passwordConfirm,
  };

  static SignupRequest _instantiate(DecodingData data) {
    return SignupRequest(
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      passwordConfirm: data.dec(_f$passwordConfirm),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SignupRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignupRequest>(map);
  }

  static SignupRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<SignupRequest>(json);
  }
}

mixin SignupRequestMappable {
  String toJsonString() {
    return SignupRequestMapper.ensureInitialized().encodeJson<SignupRequest>(
      this as SignupRequest,
    );
  }

  Map<String, dynamic> toJson() {
    return SignupRequestMapper.ensureInitialized().encodeMap<SignupRequest>(
      this as SignupRequest,
    );
  }

  SignupRequestCopyWith<SignupRequest, SignupRequest, SignupRequest>
  get copyWith => _SignupRequestCopyWithImpl<SignupRequest, SignupRequest>(
    this as SignupRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return SignupRequestMapper.ensureInitialized().stringifyValue(
      this as SignupRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return SignupRequestMapper.ensureInitialized().equalsValue(
      this as SignupRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return SignupRequestMapper.ensureInitialized().hashValue(
      this as SignupRequest,
    );
  }
}

extension SignupRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SignupRequest, $Out> {
  SignupRequestCopyWith<$R, SignupRequest, $Out> get $asSignupRequest =>
      $base.as((v, t, t2) => _SignupRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SignupRequestCopyWith<$R, $In extends SignupRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, String? passwordConfirm});
  SignupRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignupRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignupRequest, $Out>
    implements SignupRequestCopyWith<$R, SignupRequest, $Out> {
  _SignupRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignupRequest> $mapper =
      SignupRequestMapper.ensureInitialized();
  @override
  $R call({String? email, String? password, String? passwordConfirm}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (passwordConfirm != null) #passwordConfirm: passwordConfirm,
    }),
  );
  @override
  SignupRequest $make(CopyWithData data) => SignupRequest(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    passwordConfirm: data.get(#passwordConfirm, or: $value.passwordConfirm),
  );

  @override
  SignupRequestCopyWith<$R2, SignupRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SignupRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

