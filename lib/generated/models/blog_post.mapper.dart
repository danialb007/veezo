// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blog_post.dart';

class BlogPostMapper extends ClassMapperBase<BlogPost> {
  BlogPostMapper._();

  static BlogPostMapper? _instance;
  static BlogPostMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlogPostMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BlogPost';

  static String _$title(BlogPost v) => v.title;
  static const Field<BlogPost, String> _f$title = Field('title', _$title);
  static String? _$slug(BlogPost v) => v.slug;
  static const Field<BlogPost, String> _f$slug = Field(
    'slug',
    _$slug,
    opt: true,
  );
  static String? _$cover(BlogPost v) => v.cover;
  static const Field<BlogPost, String> _f$cover = Field(
    'cover',
    _$cover,
    opt: true,
  );

  @override
  final MappableFields<BlogPost> fields = const {
    #title: _f$title,
    #slug: _f$slug,
    #cover: _f$cover,
  };

  static BlogPost _instantiate(DecodingData data) {
    return BlogPost(
      title: data.dec(_f$title),
      slug: data.dec(_f$slug),
      cover: data.dec(_f$cover),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlogPost fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlogPost>(map);
  }

  static BlogPost fromJsonString(String json) {
    return ensureInitialized().decodeJson<BlogPost>(json);
  }
}

mixin BlogPostMappable {
  String toJsonString() {
    return BlogPostMapper.ensureInitialized().encodeJson<BlogPost>(
      this as BlogPost,
    );
  }

  Map<String, dynamic> toJson() {
    return BlogPostMapper.ensureInitialized().encodeMap<BlogPost>(
      this as BlogPost,
    );
  }

  BlogPostCopyWith<BlogPost, BlogPost, BlogPost> get copyWith =>
      _BlogPostCopyWithImpl<BlogPost, BlogPost>(
        this as BlogPost,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BlogPostMapper.ensureInitialized().stringifyValue(this as BlogPost);
  }

  @override
  bool operator ==(Object other) {
    return BlogPostMapper.ensureInitialized().equalsValue(
      this as BlogPost,
      other,
    );
  }

  @override
  int get hashCode {
    return BlogPostMapper.ensureInitialized().hashValue(this as BlogPost);
  }
}

extension BlogPostValueCopy<$R, $Out> on ObjectCopyWith<$R, BlogPost, $Out> {
  BlogPostCopyWith<$R, BlogPost, $Out> get $asBlogPost =>
      $base.as((v, t, t2) => _BlogPostCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlogPostCopyWith<$R, $In extends BlogPost, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title, String? slug, String? cover});
  BlogPostCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BlogPostCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlogPost, $Out>
    implements BlogPostCopyWith<$R, BlogPost, $Out> {
  _BlogPostCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlogPost> $mapper =
      BlogPostMapper.ensureInitialized();
  @override
  $R call({String? title, Object? slug = $none, Object? cover = $none}) =>
      $apply(
        FieldCopyWithData({
          if (title != null) #title: title,
          if (slug != $none) #slug: slug,
          if (cover != $none) #cover: cover,
        }),
      );
  @override
  BlogPost $make(CopyWithData data) => BlogPost(
    title: data.get(#title, or: $value.title),
    slug: data.get(#slug, or: $value.slug),
    cover: data.get(#cover, or: $value.cover),
  );

  @override
  BlogPostCopyWith<$R2, BlogPost, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BlogPostCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

