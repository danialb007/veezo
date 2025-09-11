// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'token_refresh.dart';

class TokenRefreshMapper extends ClassMapperBase<TokenRefresh> {
  TokenRefreshMapper._();

  static TokenRefreshMapper? _instance;
  static TokenRefreshMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TokenRefreshMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TokenRefresh';

  static String _$access(TokenRefresh v) => v.access;
  static const Field<TokenRefresh, String> _f$access = Field(
    'access',
    _$access,
  );
  static String _$refresh(TokenRefresh v) => v.refresh;
  static const Field<TokenRefresh, String> _f$refresh = Field(
    'refresh',
    _$refresh,
  );

  @override
  final MappableFields<TokenRefresh> fields = const {
    #access: _f$access,
    #refresh: _f$refresh,
  };

  static TokenRefresh _instantiate(DecodingData data) {
    return TokenRefresh(
      access: data.dec(_f$access),
      refresh: data.dec(_f$refresh),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TokenRefresh fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TokenRefresh>(map);
  }

  static TokenRefresh fromJsonString(String json) {
    return ensureInitialized().decodeJson<TokenRefresh>(json);
  }
}

mixin TokenRefreshMappable {
  String toJsonString() {
    return TokenRefreshMapper.ensureInitialized().encodeJson<TokenRefresh>(
      this as TokenRefresh,
    );
  }

  Map<String, dynamic> toJson() {
    return TokenRefreshMapper.ensureInitialized().encodeMap<TokenRefresh>(
      this as TokenRefresh,
    );
  }

  TokenRefreshCopyWith<TokenRefresh, TokenRefresh, TokenRefresh> get copyWith =>
      _TokenRefreshCopyWithImpl<TokenRefresh, TokenRefresh>(
        this as TokenRefresh,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TokenRefreshMapper.ensureInitialized().stringifyValue(
      this as TokenRefresh,
    );
  }

  @override
  bool operator ==(Object other) {
    return TokenRefreshMapper.ensureInitialized().equalsValue(
      this as TokenRefresh,
      other,
    );
  }

  @override
  int get hashCode {
    return TokenRefreshMapper.ensureInitialized().hashValue(
      this as TokenRefresh,
    );
  }
}

extension TokenRefreshValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TokenRefresh, $Out> {
  TokenRefreshCopyWith<$R, TokenRefresh, $Out> get $asTokenRefresh =>
      $base.as((v, t, t2) => _TokenRefreshCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TokenRefreshCopyWith<$R, $In extends TokenRefresh, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? access, String? refresh});
  TokenRefreshCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TokenRefreshCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TokenRefresh, $Out>
    implements TokenRefreshCopyWith<$R, TokenRefresh, $Out> {
  _TokenRefreshCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TokenRefresh> $mapper =
      TokenRefreshMapper.ensureInitialized();
  @override
  $R call({String? access, String? refresh}) => $apply(
    FieldCopyWithData({
      if (access != null) #access: access,
      if (refresh != null) #refresh: refresh,
    }),
  );
  @override
  TokenRefresh $make(CopyWithData data) => TokenRefresh(
    access: data.get(#access, or: $value.access),
    refresh: data.get(#refresh, or: $value.refresh),
  );

  @override
  TokenRefreshCopyWith<$R2, TokenRefresh, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TokenRefreshCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

