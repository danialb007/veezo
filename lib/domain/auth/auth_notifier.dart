import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veezo/api.dart';
import 'package:veezo/generated/models/login.dart';
import 'package:veezo/generated/models/login_request.dart';
import 'package:veezo/generated/models/signup_request.dart';
import 'package:veezo/storage.dart';

class AuthNotifier extends AsyncNotifier<Login?> {
  @override
  Future<Login?> build() async {
    final pref = await ref.read(sharedPrefProvider);
    final authData = pref.getString(StorageKeys.auth.name);
    if (authData != null) {
      return Login.fromJson(json.decode(authData)!);
    }
    return null;
  }

  Future<void> login(LoginRequest body) async {
    state = AsyncLoading();

    try {
      final response = await ref
          .read(apiProvider)
          .auth
          .authLoginCreate(body: body);

      ref.read(apiProvider).token = response.access;
      final pref = await ref.read(sharedPrefProvider);
      await pref.setString(StorageKeys.auth.name, response.toJsonString());

      state = AsyncData(response);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> signup(SignupRequest body) async {
    state = AsyncLoading();
    try {
      await ref.read(apiProvider).auth.authSignupCreate(body: body);
      state = AsyncData(null);
    } on DioException catch (e) {
      state = AsyncError(
        (e.response?.data as Map).values.first.first,
        StackTrace.current,
      );
    }
  }

  void updateToken(String access, String refresh) {
    state = AsyncData(state.value?.copyWith(access: access, refresh: refresh));
  }
}

final authProvider = AsyncNotifierProvider<AuthNotifier, Login?>(
  AuthNotifier.new,
);
