// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_request.dart';

class UserRequestMapper extends ClassMapperBase<UserRequest> {
  UserRequestMapper._();

  static UserRequestMapper? _instance;
  static UserRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserRequest';

  static String? _$username(UserRequest v) => v.username;
  static const Field<UserRequest, String> _f$username = Field(
    'username',
    _$username,
    opt: true,
  );
  static String? _$image(UserRequest v) => v.image;
  static const Field<UserRequest, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static String? _$firstName(UserRequest v) => v.firstName;
  static const Field<UserRequest, String> _f$firstName = Field(
    'firstName',
    _$firstName,
    key: r'first_name',
    opt: true,
  );
  static String? _$lastName(UserRequest v) => v.lastName;
  static const Field<UserRequest, String> _f$lastName = Field(
    'lastName',
    _$lastName,
    key: r'last_name',
    opt: true,
  );

  @override
  final MappableFields<UserRequest> fields = const {
    #username: _f$username,
    #image: _f$image,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
  };

  static UserRequest _instantiate(DecodingData data) {
    return UserRequest(
      username: data.dec(_f$username),
      image: data.dec(_f$image),
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserRequest>(map);
  }

  static UserRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<UserRequest>(json);
  }
}

mixin UserRequestMappable {
  String toJsonString() {
    return UserRequestMapper.ensureInitialized().encodeJson<UserRequest>(
      this as UserRequest,
    );
  }

  Map<String, dynamic> toJson() {
    return UserRequestMapper.ensureInitialized().encodeMap<UserRequest>(
      this as UserRequest,
    );
  }

  UserRequestCopyWith<UserRequest, UserRequest, UserRequest> get copyWith =>
      _UserRequestCopyWithImpl<UserRequest, UserRequest>(
        this as UserRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserRequestMapper.ensureInitialized().stringifyValue(
      this as UserRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserRequestMapper.ensureInitialized().equalsValue(
      this as UserRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return UserRequestMapper.ensureInitialized().hashValue(this as UserRequest);
  }
}

extension UserRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserRequest, $Out> {
  UserRequestCopyWith<$R, UserRequest, $Out> get $asUserRequest =>
      $base.as((v, t, t2) => _UserRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserRequestCopyWith<$R, $In extends UserRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? username,
    String? image,
    String? firstName,
    String? lastName,
  });
  UserRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserRequest, $Out>
    implements UserRequestCopyWith<$R, UserRequest, $Out> {
  _UserRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserRequest> $mapper =
      UserRequestMapper.ensureInitialized();
  @override
  $R call({
    Object? username = $none,
    Object? image = $none,
    Object? firstName = $none,
    Object? lastName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (username != $none) #username: username,
      if (image != $none) #image: image,
      if (firstName != $none) #firstName: firstName,
      if (lastName != $none) #lastName: lastName,
    }),
  );
  @override
  UserRequest $make(CopyWithData data) => UserRequest(
    username: data.get(#username, or: $value.username),
    image: data.get(#image, or: $value.image),
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
  );

  @override
  UserRequestCopyWith<$R2, UserRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

