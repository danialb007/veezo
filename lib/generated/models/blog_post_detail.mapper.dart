// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blog_post_detail.dart';

class BlogPostDetailMapper extends ClassMapperBase<BlogPostDetail> {
  BlogPostDetailMapper._();

  static BlogPostDetailMapper? _instance;
  static BlogPostDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlogPostDetailMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BlogPostDetail';

  static int _$id(BlogPostDetail v) => v.id;
  static const Field<BlogPostDetail, int> _f$id = Field('id', _$id);
  static DateTime _$created(BlogPostDetail v) => v.created;
  static const Field<BlogPostDetail, DateTime> _f$created = Field(
    'created',
    _$created,
  );
  static DateTime _$modified(BlogPostDetail v) => v.modified;
  static const Field<BlogPostDetail, DateTime> _f$modified = Field(
    'modified',
    _$modified,
  );
  static String _$title(BlogPostDetail v) => v.title;
  static const Field<BlogPostDetail, String> _f$title = Field('title', _$title);
  static String _$content(BlogPostDetail v) => v.content;
  static const Field<BlogPostDetail, String> _f$content = Field(
    'content',
    _$content,
  );
  static String _$metaDescription(BlogPostDetail v) => v.metaDescription;
  static const Field<BlogPostDetail, String> _f$metaDescription = Field(
    'metaDescription',
    _$metaDescription,
    key: r'meta_description',
  );
  static String? _$slug(BlogPostDetail v) => v.slug;
  static const Field<BlogPostDetail, String> _f$slug = Field(
    'slug',
    _$slug,
    opt: true,
  );
  static String? _$cover(BlogPostDetail v) => v.cover;
  static const Field<BlogPostDetail, String> _f$cover = Field(
    'cover',
    _$cover,
    opt: true,
  );
  static bool? _$published(BlogPostDetail v) => v.published;
  static const Field<BlogPostDetail, bool> _f$published = Field(
    'published',
    _$published,
    opt: true,
  );

  @override
  final MappableFields<BlogPostDetail> fields = const {
    #id: _f$id,
    #created: _f$created,
    #modified: _f$modified,
    #title: _f$title,
    #content: _f$content,
    #metaDescription: _f$metaDescription,
    #slug: _f$slug,
    #cover: _f$cover,
    #published: _f$published,
  };

  static BlogPostDetail _instantiate(DecodingData data) {
    return BlogPostDetail(
      id: data.dec(_f$id),
      created: data.dec(_f$created),
      modified: data.dec(_f$modified),
      title: data.dec(_f$title),
      content: data.dec(_f$content),
      metaDescription: data.dec(_f$metaDescription),
      slug: data.dec(_f$slug),
      cover: data.dec(_f$cover),
      published: data.dec(_f$published),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlogPostDetail fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlogPostDetail>(map);
  }

  static BlogPostDetail fromJsonString(String json) {
    return ensureInitialized().decodeJson<BlogPostDetail>(json);
  }
}

mixin BlogPostDetailMappable {
  String toJsonString() {
    return BlogPostDetailMapper.ensureInitialized().encodeJson<BlogPostDetail>(
      this as BlogPostDetail,
    );
  }

  Map<String, dynamic> toJson() {
    return BlogPostDetailMapper.ensureInitialized().encodeMap<BlogPostDetail>(
      this as BlogPostDetail,
    );
  }

  BlogPostDetailCopyWith<BlogPostDetail, BlogPostDetail, BlogPostDetail>
  get copyWith => _BlogPostDetailCopyWithImpl<BlogPostDetail, BlogPostDetail>(
    this as BlogPostDetail,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return BlogPostDetailMapper.ensureInitialized().stringifyValue(
      this as BlogPostDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return BlogPostDetailMapper.ensureInitialized().equalsValue(
      this as BlogPostDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return BlogPostDetailMapper.ensureInitialized().hashValue(
      this as BlogPostDetail,
    );
  }
}

extension BlogPostDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlogPostDetail, $Out> {
  BlogPostDetailCopyWith<$R, BlogPostDetail, $Out> get $asBlogPostDetail =>
      $base.as((v, t, t2) => _BlogPostDetailCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlogPostDetailCopyWith<$R, $In extends BlogPostDetail, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    DateTime? created,
    DateTime? modified,
    String? title,
    String? content,
    String? metaDescription,
    String? slug,
    String? cover,
    bool? published,
  });
  BlogPostDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BlogPostDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlogPostDetail, $Out>
    implements BlogPostDetailCopyWith<$R, BlogPostDetail, $Out> {
  _BlogPostDetailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlogPostDetail> $mapper =
      BlogPostDetailMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    DateTime? created,
    DateTime? modified,
    String? title,
    String? content,
    String? metaDescription,
    Object? slug = $none,
    Object? cover = $none,
    Object? published = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (created != null) #created: created,
      if (modified != null) #modified: modified,
      if (title != null) #title: title,
      if (content != null) #content: content,
      if (metaDescription != null) #metaDescription: metaDescription,
      if (slug != $none) #slug: slug,
      if (cover != $none) #cover: cover,
      if (published != $none) #published: published,
    }),
  );
  @override
  BlogPostDetail $make(CopyWithData data) => BlogPostDetail(
    id: data.get(#id, or: $value.id),
    created: data.get(#created, or: $value.created),
    modified: data.get(#modified, or: $value.modified),
    title: data.get(#title, or: $value.title),
    content: data.get(#content, or: $value.content),
    metaDescription: data.get(#metaDescription, or: $value.metaDescription),
    slug: data.get(#slug, or: $value.slug),
    cover: data.get(#cover, or: $value.cover),
    published: data.get(#published, or: $value.published),
  );

  @override
  BlogPostDetailCopyWith<$R2, BlogPostDetail, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BlogPostDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

