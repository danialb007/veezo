// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static int _$id(User v) => v.id;
  static const Field<User, int> _f$id = Field('id', _$id);
  static String _$email(User v) => v.email;
  static const Field<User, String> _f$email = Field('email', _$email);
  static String? _$username(User v) => v.username;
  static const Field<User, String> _f$username = Field(
    'username',
    _$username,
    opt: true,
  );
  static String? _$image(User v) => v.image;
  static const Field<User, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static String? _$firstName(User v) => v.firstName;
  static const Field<User, String> _f$firstName = Field(
    'firstName',
    _$firstName,
    key: r'first_name',
    opt: true,
  );
  static String? _$lastName(User v) => v.lastName;
  static const Field<User, String> _f$lastName = Field(
    'lastName',
    _$lastName,
    key: r'last_name',
    opt: true,
  );

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #email: _f$email,
    #username: _f$username,
    #image: _f$image,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
  };

  static User _instantiate(DecodingData data) {
    return User(
      id: data.dec(_f$id),
      email: data.dec(_f$email),
      username: data.dec(_f$username),
      image: data.dec(_f$image),
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static User fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJsonString(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJsonString() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toJson() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl<User, User>(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? email,
    String? username,
    String? image,
    String? firstName,
    String? lastName,
  });
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? email,
    Object? username = $none,
    Object? image = $none,
    Object? firstName = $none,
    Object? lastName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (email != null) #email: email,
      if (username != $none) #username: username,
      if (image != $none) #image: image,
      if (firstName != $none) #firstName: firstName,
      if (lastName != $none) #lastName: lastName,
    }),
  );
  @override
  User $make(CopyWithData data) => User(
    id: data.get(#id, or: $value.id),
    email: data.get(#email, or: $value.email),
    username: data.get(#username, or: $value.username),
    image: data.get(#image, or: $value.image),
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
  );

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

