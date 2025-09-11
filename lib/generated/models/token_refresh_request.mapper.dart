// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'token_refresh_request.dart';

class TokenRefreshRequestMapper extends ClassMapperBase<TokenRefreshRequest> {
  TokenRefreshRequestMapper._();

  static TokenRefreshRequestMapper? _instance;
  static TokenRefreshRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TokenRefreshRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TokenRefreshRequest';

  static String _$refresh(TokenRefreshRequest v) => v.refresh;
  static const Field<TokenRefreshRequest, String> _f$refresh = Field(
    'refresh',
    _$refresh,
  );

  @override
  final MappableFields<TokenRefreshRequest> fields = const {
    #refresh: _f$refresh,
  };

  static TokenRefreshRequest _instantiate(DecodingData data) {
    return TokenRefreshRequest(refresh: data.dec(_f$refresh));
  }

  @override
  final Function instantiate = _instantiate;

  static TokenRefreshRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TokenRefreshRequest>(map);
  }

  static TokenRefreshRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<TokenRefreshRequest>(json);
  }
}

mixin TokenRefreshRequestMappable {
  String toJsonString() {
    return TokenRefreshRequestMapper.ensureInitialized()
        .encodeJson<TokenRefreshRequest>(this as TokenRefreshRequest);
  }

  Map<String, dynamic> toJson() {
    return TokenRefreshRequestMapper.ensureInitialized()
        .encodeMap<TokenRefreshRequest>(this as TokenRefreshRequest);
  }

  TokenRefreshRequestCopyWith<
    TokenRefreshRequest,
    TokenRefreshRequest,
    TokenRefreshRequest
  >
  get copyWith =>
      _TokenRefreshRequestCopyWithImpl<
        TokenRefreshRequest,
        TokenRefreshRequest
      >(this as TokenRefreshRequest, $identity, $identity);
  @override
  String toString() {
    return TokenRefreshRequestMapper.ensureInitialized().stringifyValue(
      this as TokenRefreshRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return TokenRefreshRequestMapper.ensureInitialized().equalsValue(
      this as TokenRefreshRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return TokenRefreshRequestMapper.ensureInitialized().hashValue(
      this as TokenRefreshRequest,
    );
  }
}

extension TokenRefreshRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TokenRefreshRequest, $Out> {
  TokenRefreshRequestCopyWith<$R, TokenRefreshRequest, $Out>
  get $asTokenRefreshRequest => $base.as(
    (v, t, t2) => _TokenRefreshRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TokenRefreshRequestCopyWith<
  $R,
  $In extends TokenRefreshRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? refresh});
  TokenRefreshRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TokenRefreshRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TokenRefreshRequest, $Out>
    implements TokenRefreshRequestCopyWith<$R, TokenRefreshRequest, $Out> {
  _TokenRefreshRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TokenRefreshRequest> $mapper =
      TokenRefreshRequestMapper.ensureInitialized();
  @override
  $R call({String? refresh}) =>
      $apply(FieldCopyWithData({if (refresh != null) #refresh: refresh}));
  @override
  TokenRefreshRequest $make(CopyWithData data) =>
      TokenRefreshRequest(refresh: data.get(#refresh, or: $value.refresh));

  @override
  TokenRefreshRequestCopyWith<$R2, TokenRefreshRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TokenRefreshRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

