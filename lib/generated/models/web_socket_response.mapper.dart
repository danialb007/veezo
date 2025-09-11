// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'web_socket_response.dart';

class WebSocketResponseMapper extends ClassMapperBase<WebSocketResponse> {
  WebSocketResponseMapper._();

  static WebSocketResponseMapper? _instance;
  static WebSocketResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WebSocketResponseMapper._());
      StatusEnumMapper.ensureInitialized();
      MessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WebSocketResponse';

  static StatusEnum _$status(WebSocketResponse v) => v.status;
  static const Field<WebSocketResponse, StatusEnum> _f$status = Field(
    'status',
    _$status,
  );
  static Message? _$message(WebSocketResponse v) => v.message;
  static const Field<WebSocketResponse, Message> _f$message = Field(
    'message',
    _$message,
    opt: true,
  );
  static String? _$error(WebSocketResponse v) => v.error;
  static const Field<WebSocketResponse, String> _f$error = Field(
    'error',
    _$error,
    opt: true,
  );

  @override
  final MappableFields<WebSocketResponse> fields = const {
    #status: _f$status,
    #message: _f$message,
    #error: _f$error,
  };

  static WebSocketResponse _instantiate(DecodingData data) {
    return WebSocketResponse(
      status: data.dec(_f$status),
      message: data.dec(_f$message),
      error: data.dec(_f$error),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WebSocketResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WebSocketResponse>(map);
  }

  static WebSocketResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<WebSocketResponse>(json);
  }
}

mixin WebSocketResponseMappable {
  String toJsonString() {
    return WebSocketResponseMapper.ensureInitialized()
        .encodeJson<WebSocketResponse>(this as WebSocketResponse);
  }

  Map<String, dynamic> toJson() {
    return WebSocketResponseMapper.ensureInitialized()
        .encodeMap<WebSocketResponse>(this as WebSocketResponse);
  }

  WebSocketResponseCopyWith<
    WebSocketResponse,
    WebSocketResponse,
    WebSocketResponse
  >
  get copyWith =>
      _WebSocketResponseCopyWithImpl<WebSocketResponse, WebSocketResponse>(
        this as WebSocketResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WebSocketResponseMapper.ensureInitialized().stringifyValue(
      this as WebSocketResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return WebSocketResponseMapper.ensureInitialized().equalsValue(
      this as WebSocketResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return WebSocketResponseMapper.ensureInitialized().hashValue(
      this as WebSocketResponse,
    );
  }
}

extension WebSocketResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WebSocketResponse, $Out> {
  WebSocketResponseCopyWith<$R, WebSocketResponse, $Out>
  get $asWebSocketResponse => $base.as(
    (v, t, t2) => _WebSocketResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class WebSocketResponseCopyWith<
  $R,
  $In extends WebSocketResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MessageCopyWith<$R, Message, Message>? get message;
  $R call({StatusEnum? status, Message? message, String? error});
  WebSocketResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WebSocketResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WebSocketResponse, $Out>
    implements WebSocketResponseCopyWith<$R, WebSocketResponse, $Out> {
  _WebSocketResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WebSocketResponse> $mapper =
      WebSocketResponseMapper.ensureInitialized();
  @override
  MessageCopyWith<$R, Message, Message>? get message =>
      $value.message?.copyWith.$chain((v) => call(message: v));
  @override
  $R call({
    StatusEnum? status,
    Object? message = $none,
    Object? error = $none,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (message != $none) #message: message,
      if (error != $none) #error: error,
    }),
  );
  @override
  WebSocketResponse $make(CopyWithData data) => WebSocketResponse(
    status: data.get(#status, or: $value.status),
    message: data.get(#message, or: $value.message),
    error: data.get(#error, or: $value.error),
  );

  @override
  WebSocketResponseCopyWith<$R2, WebSocketResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WebSocketResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

