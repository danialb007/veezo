// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

part 'blog_post_detail.mapper.dart';

@MappableClass()
class BlogPostDetail with BlogPostDetailMappable {

  const BlogPostDetail({
    required this.id,
    required this.created,
    required this.modified,
    required this.title,
    required this.content,
    required this.metaDescription,
    this.slug,
    this.cover,
    this.published,
  });
  final int id;
  final DateTime created;
  final DateTime modified;
  final String title;
  final String content;
  @MappableField(key: 'meta_description')
  final String metaDescription;
  final String? slug;
  final String? cover;
  final bool? published;


  static BlogPostDetail fromJson(Map<String, dynamic> json) => BlogPostDetailMapper.ensureInitialized().decodeMap<BlogPostDetail>(json);
}
