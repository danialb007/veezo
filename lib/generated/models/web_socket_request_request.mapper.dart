// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'web_socket_request_request.dart';

class WebSocketRequestRequestMapper
    extends ClassMapperBase<WebSocketRequestRequest> {
  WebSocketRequestRequestMapper._();

  static WebSocketRequestRequestMapper? _instance;
  static WebSocketRequestRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = WebSocketRequestRequestMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'WebSocketRequestRequest';

  static String _$message(WebSocketRequestRequest v) => v.message;
  static const Field<WebSocketRequestRequest, String> _f$message = Field(
    'message',
    _$message,
  );
  static String? _$chatId(WebSocketRequestRequest v) => v.chatId;
  static const Field<WebSocketRequestRequest, String> _f$chatId = Field(
    'chatId',
    _$chatId,
    key: r'chat_id',
    opt: true,
  );

  @override
  final MappableFields<WebSocketRequestRequest> fields = const {
    #message: _f$message,
    #chatId: _f$chatId,
  };

  static WebSocketRequestRequest _instantiate(DecodingData data) {
    return WebSocketRequestRequest(
      message: data.dec(_f$message),
      chatId: data.dec(_f$chatId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WebSocketRequestRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WebSocketRequestRequest>(map);
  }

  static WebSocketRequestRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<WebSocketRequestRequest>(json);
  }
}

mixin WebSocketRequestRequestMappable {
  String toJsonString() {
    return WebSocketRequestRequestMapper.ensureInitialized()
        .encodeJson<WebSocketRequestRequest>(this as WebSocketRequestRequest);
  }

  Map<String, dynamic> toJson() {
    return WebSocketRequestRequestMapper.ensureInitialized()
        .encodeMap<WebSocketRequestRequest>(this as WebSocketRequestRequest);
  }

  WebSocketRequestRequestCopyWith<
    WebSocketRequestRequest,
    WebSocketRequestRequest,
    WebSocketRequestRequest
  >
  get copyWith =>
      _WebSocketRequestRequestCopyWithImpl<
        WebSocketRequestRequest,
        WebSocketRequestRequest
      >(this as WebSocketRequestRequest, $identity, $identity);
  @override
  String toString() {
    return WebSocketRequestRequestMapper.ensureInitialized().stringifyValue(
      this as WebSocketRequestRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return WebSocketRequestRequestMapper.ensureInitialized().equalsValue(
      this as WebSocketRequestRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return WebSocketRequestRequestMapper.ensureInitialized().hashValue(
      this as WebSocketRequestRequest,
    );
  }
}

extension WebSocketRequestRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WebSocketRequestRequest, $Out> {
  WebSocketRequestRequestCopyWith<$R, WebSocketRequestRequest, $Out>
  get $asWebSocketRequestRequest => $base.as(
    (v, t, t2) => _WebSocketRequestRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class WebSocketRequestRequestCopyWith<
  $R,
  $In extends WebSocketRequestRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, String? chatId});
  WebSocketRequestRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WebSocketRequestRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WebSocketRequestRequest, $Out>
    implements
        WebSocketRequestRequestCopyWith<$R, WebSocketRequestRequest, $Out> {
  _WebSocketRequestRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WebSocketRequestRequest> $mapper =
      WebSocketRequestRequestMapper.ensureInitialized();
  @override
  $R call({String? message, Object? chatId = $none}) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (chatId != $none) #chatId: chatId,
    }),
  );
  @override
  WebSocketRequestRequest $make(CopyWithData data) => WebSocketRequestRequest(
    message: data.get(#message, or: $value.message),
    chatId: data.get(#chatId, or: $value.chatId),
  );

  @override
  WebSocketRequestRequestCopyWith<$R2, WebSocketRequestRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WebSocketRequestRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

