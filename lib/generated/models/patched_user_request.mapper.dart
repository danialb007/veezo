// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'patched_user_request.dart';

class PatchedUserRequestMapper extends ClassMapperBase<PatchedUserRequest> {
  PatchedUserRequestMapper._();

  static PatchedUserRequestMapper? _instance;
  static PatchedUserRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PatchedUserRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PatchedUserRequest';

  static String? _$username(PatchedUserRequest v) => v.username;
  static const Field<PatchedUserRequest, String> _f$username = Field(
    'username',
    _$username,
    opt: true,
  );
  static String? _$image(PatchedUserRequest v) => v.image;
  static const Field<PatchedUserRequest, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static String? _$firstName(PatchedUserRequest v) => v.firstName;
  static const Field<PatchedUserRequest, String> _f$firstName = Field(
    'firstName',
    _$firstName,
    key: r'first_name',
    opt: true,
  );
  static String? _$lastName(PatchedUserRequest v) => v.lastName;
  static const Field<PatchedUserRequest, String> _f$lastName = Field(
    'lastName',
    _$lastName,
    key: r'last_name',
    opt: true,
  );

  @override
  final MappableFields<PatchedUserRequest> fields = const {
    #username: _f$username,
    #image: _f$image,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
  };

  static PatchedUserRequest _instantiate(DecodingData data) {
    return PatchedUserRequest(
      username: data.dec(_f$username),
      image: data.dec(_f$image),
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PatchedUserRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PatchedUserRequest>(map);
  }

  static PatchedUserRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<PatchedUserRequest>(json);
  }
}

mixin PatchedUserRequestMappable {
  String toJsonString() {
    return PatchedUserRequestMapper.ensureInitialized()
        .encodeJson<PatchedUserRequest>(this as PatchedUserRequest);
  }

  Map<String, dynamic> toJson() {
    return PatchedUserRequestMapper.ensureInitialized()
        .encodeMap<PatchedUserRequest>(this as PatchedUserRequest);
  }

  PatchedUserRequestCopyWith<
    PatchedUserRequest,
    PatchedUserRequest,
    PatchedUserRequest
  >
  get copyWith =>
      _PatchedUserRequestCopyWithImpl<PatchedUserRequest, PatchedUserRequest>(
        this as PatchedUserRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PatchedUserRequestMapper.ensureInitialized().stringifyValue(
      this as PatchedUserRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return PatchedUserRequestMapper.ensureInitialized().equalsValue(
      this as PatchedUserRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return PatchedUserRequestMapper.ensureInitialized().hashValue(
      this as PatchedUserRequest,
    );
  }
}

extension PatchedUserRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PatchedUserRequest, $Out> {
  PatchedUserRequestCopyWith<$R, PatchedUserRequest, $Out>
  get $asPatchedUserRequest => $base.as(
    (v, t, t2) => _PatchedUserRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PatchedUserRequestCopyWith<
  $R,
  $In extends PatchedUserRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? username,
    String? image,
    String? firstName,
    String? lastName,
  });
  PatchedUserRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PatchedUserRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PatchedUserRequest, $Out>
    implements PatchedUserRequestCopyWith<$R, PatchedUserRequest, $Out> {
  _PatchedUserRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PatchedUserRequest> $mapper =
      PatchedUserRequestMapper.ensureInitialized();
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
  PatchedUserRequest $make(CopyWithData data) => PatchedUserRequest(
    username: data.get(#username, or: $value.username),
    image: data.get(#image, or: $value.image),
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
  );

  @override
  PatchedUserRequestCopyWith<$R2, PatchedUserRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PatchedUserRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

