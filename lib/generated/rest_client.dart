// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'ai/ai_client.dart';
import 'auth/auth_client.dart';
import 'blog/blog_client.dart';
import 'payment/payment_client.dart';

/// Your Project API `v1.0.0 (v1)`.
///
/// Your project description.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.0 (v1)';

  AiClient? _ai;
  AuthClient? _auth;
  BlogClient? _blog;
  PaymentClient? _payment;

  AiClient get ai => _ai ??= AiClient(_dio, baseUrl: _baseUrl);

  AuthClient get auth => _auth ??= AuthClient(_dio, baseUrl: _baseUrl);

  BlogClient get blog => _blog ??= BlogClient(_dio, baseUrl: _baseUrl);

  PaymentClient get payment => _payment ??= PaymentClient(_dio, baseUrl: _baseUrl);
}
