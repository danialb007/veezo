// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login.dart';

class LoginMapper extends ClassMapperBase<Login> {
  LoginMapper._();

  static LoginMapper? _instance;
  static LoginMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Login';

  static String _$access(Login v) => v.access;
  static const Field<Login, String> _f$access = Field('access', _$access);
  static String _$refresh(Login v) => v.refresh;
  static const Field<Login, String> _f$refresh = Field('refresh', _$refresh);
  static User _$user(Login v) => v.user;
  static const Field<Login, User> _f$user = Field('user', _$user);

  @override
  final MappableFields<Login> fields = const {
    #access: _f$access,
    #refresh: _f$refresh,
    #user: _f$user,
  };

  static Login _instantiate(DecodingData data) {
    return Login(
      access: data.dec(_f$access),
      refresh: data.dec(_f$refresh),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Login fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Login>(map);
  }

  static Login fromJsonString(String json) {
    return ensureInitialized().decodeJson<Login>(json);
  }
}

mixin LoginMappable {
  String toJsonString() {
    return LoginMapper.ensureInitialized().encodeJson<Login>(this as Login);
  }

  Map<String, dynamic> toJson() {
    return LoginMapper.ensureInitialized().encodeMap<Login>(this as Login);
  }

  LoginCopyWith<Login, Login, Login> get copyWith =>
      _LoginCopyWithImpl<Login, Login>(this as Login, $identity, $identity);
  @override
  String toString() {
    return LoginMapper.ensureInitialized().stringifyValue(this as Login);
  }

  @override
  bool operator ==(Object other) {
    return LoginMapper.ensureInitialized().equalsValue(this as Login, other);
  }

  @override
  int get hashCode {
    return LoginMapper.ensureInitialized().hashValue(this as Login);
  }
}

extension LoginValueCopy<$R, $Out> on ObjectCopyWith<$R, Login, $Out> {
  LoginCopyWith<$R, Login, $Out> get $asLogin =>
      $base.as((v, t, t2) => _LoginCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginCopyWith<$R, $In extends Login, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  $R call({String? access, String? refresh, User? user});
  LoginCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Login, $Out>
    implements LoginCopyWith<$R, Login, $Out> {
  _LoginCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Login> $mapper = LoginMapper.ensureInitialized();
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
  Login $make(CopyWithData data) => Login(
    access: data.get(#access, or: $value.access),
    refresh: data.get(#refresh, or: $value.refresh),
    user: data.get(#user, or: $value.user),
  );

  @override
  LoginCopyWith<$R2, Login, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LoginCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

