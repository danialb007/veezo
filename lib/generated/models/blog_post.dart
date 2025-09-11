// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'blog_post.mapper.dart';

@MappableClass()
class BlogPost with BlogPostMappable {

  const BlogPost({
    required this.title,
    this.slug,
    this.cover,
  });
  final String title;
  final String? slug;
  final String? cover;


  static BlogPost fromJson(Map<String, dynamic> json) => BlogPostMapper.ensureInitialized().decodeMap<BlogPost>(json);
}
