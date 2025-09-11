// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/login.dart';
import '../models/login_request.dart';
import '../models/patched_user_request.dart';
import '../models/signup_request.dart';
import '../models/social_login.dart';
import '../models/social_login_request.dart';
import '../models/token_refresh.dart';
import '../models/token_refresh_request.dart';
import '../models/user.dart';
import '../models/verify.dart';
import '../models/verify_request.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/api/v1/auth/google_login/')
  Future<SocialLogin> authGoogleLoginCreate({
    @Body() SocialLoginRequest? body,
  });

  @POST('/api/v1/auth/login/')
  Future<Login> authLoginCreate({
    @Body() required LoginRequest body,
  });

  @POST('/api/v1/auth/signup/')
  Future<void> authSignupCreate({
    @Body() required SignupRequest body,
  });

  @POST('/api/v1/auth/token_refresh/')
  Future<TokenRefresh> authTokenRefreshCreate({
    @Body() required TokenRefreshRequest body,
  });

  @GET('/api/v1/auth/user/')
  Future<User> authUserList();

  @PATCH('/api/v1/auth/user/{id}/info/')
  Future<User> authUserInfoPartialUpdate({
    @Path('id') required String id,
    @Body() PatchedUserRequest? body,
  });

  @POST('/api/v1/auth/verify/')
  Future<Verify> authVerifyCreate({
    @Body() required VerifyRequest body,
  });

  @POST('/api/v1/auth/waitlist/')
  Future<void> authWaitlistCreate();
}
