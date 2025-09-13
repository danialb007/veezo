// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat.dart';

class ChatMapper extends ClassMapperBase<Chat> {
  ChatMapper._();

  static ChatMapper? _instance;
  static ChatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Chat';

  static String _$id(Chat v) => v.id;
  static const Field<Chat, String> _f$id = Field('id', _$id);
  static DateTime _$created(Chat v) => v.created;
  static const Field<Chat, DateTime> _f$created = Field('created', _$created);
  static DateTime _$modified(Chat v) => v.modified;
  static const Field<Chat, DateTime> _f$modified = Field(
    'modified',
    _$modified,
  );
  static String? _$title(Chat v) => v.title;
  static const Field<Chat, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );

  @override
  final MappableFields<Chat> fields = const {
    #id: _f$id,
    #created: _f$created,
    #modified: _f$modified,
    #title: _f$title,
  };

  static Chat _instantiate(DecodingData data) {
    return Chat(
      id: data.dec(_f$id),
      created: data.dec(_f$created),
      modified: data.dec(_f$modified),
      title: data.dec(_f$title),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Chat fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Chat>(map);
  }

  static Chat fromJsonString(String json) {
    return ensureInitialized().decodeJson<Chat>(json);
  }
}

mixin ChatMappable {
  String toJsonString() {
    return ChatMapper.ensureInitialized().encodeJson<Chat>(this as Chat);
  }

  Map<String, dynamic> toJson() {
    return ChatMapper.ensureInitialized().encodeMap<Chat>(this as Chat);
  }

  ChatCopyWith<Chat, Chat, Chat> get copyWith =>
      _ChatCopyWithImpl<Chat, Chat>(this as Chat, $identity, $identity);
  @override
  String toString() {
    return ChatMapper.ensureInitialized().stringifyValue(this as Chat);
  }

  @override
  bool operator ==(Object other) {
    return ChatMapper.ensureInitialized().equalsValue(this as Chat, other);
  }

  @override
  int get hashCode {
    return ChatMapper.ensureInitialized().hashValue(this as Chat);
  }
}

extension ChatValueCopy<$R, $Out> on ObjectCopyWith<$R, Chat, $Out> {
  ChatCopyWith<$R, Chat, $Out> get $asChat =>
      $base.as((v, t, t2) => _ChatCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatCopyWith<$R, $In extends Chat, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? created, DateTime? modified, String? title});
  ChatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChatCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Chat, $Out>
    implements ChatCopyWith<$R, Chat, $Out> {
  _ChatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Chat> $mapper = ChatMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    DateTime? created,
    DateTime? modified,
    Object? title = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (created != null) #created: created,
      if (modified != null) #modified: modified,
      if (title != $none) #title: title,
    }),
  );
  @override
  Chat $make(CopyWithData data) => Chat(
    id: data.get(#id, or: $value.id),
    created: data.get(#created, or: $value.created),
    modified: data.get(#modified, or: $value.modified),
    title: data.get(#title, or: $value.title),
  );

  @override
  ChatCopyWith<$R2, Chat, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

