// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message.dart';

class MessageMapper extends ClassMapperBase<Message> {
  MessageMapper._();

  static MessageMapper? _instance;
  static MessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageMapper._());
      RoleEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Message';

  static String _$id(Message v) => v.id;
  static const Field<Message, String> _f$id = Field('id', _$id);
  static DateTime _$created(Message v) => v.created;
  static const Field<Message, DateTime> _f$created = Field(
    'created',
    _$created,
  );
  static DateTime _$modified(Message v) => v.modified;
  static const Field<Message, DateTime> _f$modified = Field(
    'modified',
    _$modified,
  );
  static RoleEnum _$role(Message v) => v.role;
  static const Field<Message, RoleEnum> _f$role = Field('role', _$role);
  static String _$text(Message v) => v.text;
  static const Field<Message, String> _f$text = Field('text', _$text);

  @override
  final MappableFields<Message> fields = const {
    #id: _f$id,
    #created: _f$created,
    #modified: _f$modified,
    #role: _f$role,
    #text: _f$text,
  };

  static Message _instantiate(DecodingData data) {
    return Message(
      id: data.dec(_f$id),
      created: data.dec(_f$created),
      modified: data.dec(_f$modified),
      role: data.dec(_f$role),
      text: data.dec(_f$text),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Message fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Message>(map);
  }

  static Message fromJsonString(String json) {
    return ensureInitialized().decodeJson<Message>(json);
  }
}

mixin MessageMappable {
  String toJsonString() {
    return MessageMapper.ensureInitialized().encodeJson<Message>(
      this as Message,
    );
  }

  Map<String, dynamic> toJson() {
    return MessageMapper.ensureInitialized().encodeMap<Message>(
      this as Message,
    );
  }

  MessageCopyWith<Message, Message, Message> get copyWith =>
      _MessageCopyWithImpl<Message, Message>(
        this as Message,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MessageMapper.ensureInitialized().stringifyValue(this as Message);
  }

  @override
  bool operator ==(Object other) {
    return MessageMapper.ensureInitialized().equalsValue(
      this as Message,
      other,
    );
  }

  @override
  int get hashCode {
    return MessageMapper.ensureInitialized().hashValue(this as Message);
  }
}

extension MessageValueCopy<$R, $Out> on ObjectCopyWith<$R, Message, $Out> {
  MessageCopyWith<$R, Message, $Out> get $asMessage =>
      $base.as((v, t, t2) => _MessageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MessageCopyWith<$R, $In extends Message, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? created,
    DateTime? modified,
    RoleEnum? role,
    String? text,
  });
  MessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Message, $Out>
    implements MessageCopyWith<$R, Message, $Out> {
  _MessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Message> $mapper =
      MessageMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    DateTime? created,
    DateTime? modified,
    RoleEnum? role,
    String? text,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (created != null) #created: created,
      if (modified != null) #modified: modified,
      if (role != null) #role: role,
      if (text != null) #text: text,
    }),
  );
  @override
  Message $make(CopyWithData data) => Message(
    id: data.get(#id, or: $value.id),
    created: data.get(#created, or: $value.created),
    modified: data.get(#modified, or: $value.modified),
    role: data.get(#role, or: $value.role),
    text: data.get(#text, or: $value.text),
  );

  @override
  MessageCopyWith<$R2, Message, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MessageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

