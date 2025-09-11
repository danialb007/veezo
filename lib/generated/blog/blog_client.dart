// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/blog_post.dart';
import '../models/blog_post_detail.dart';

part 'blog_client.g.dart';

@RestApi()
abstract class BlogClient {
  factory BlogClient(Dio dio, {String? baseUrl}) = _BlogClient;

  @GET('/api/v1/blog/blog_post/')
  Future<List<BlogPost>> blogBlogPostList();

  @GET('/api/v1/blog/blog_post/{slug}/')
  Future<BlogPostDetail> blogBlogPostRetrieve({
    @Path('slug') required String slug,
  });
}
