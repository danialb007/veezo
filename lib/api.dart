import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/generated/models/token_refresh_request.dart';
import 'package:veezo/generated/rest_client.dart';
import 'package:veezo/routes.dart';

final apiProvider = Provider(Api.new);

class Api extends RestClient {
  Api(this.ref) : super(dio = dioInstance(ref), baseUrl: baseUrl);

  final Ref ref;

  static Dio dioInstance(Ref ref) =>
      Dio(BaseOptions(baseUrl: baseUrl, contentType: 'application/json'))
        ..interceptors.add(interceptor(ref));

  static String baseUrl = dotenv.get("BASE_URL");
  static String baseWebsocketUrl = baseUrl
      .replaceAll('https', 'wss')
      .replaceAll('http', 'ws');

  String _token = '';

  static late Dio dio;

  String get token => _token;
  set token(String token) {
    _token = token;
    dio.options.headers.addAll({"Authorization": "Bearer $token"});
  }

  void clearToken() {
    token = '';
    dio.options.headers.remove("Authorization");
  }

  static InterceptorsWrapper interceptor(Ref ref) => InterceptorsWrapper(
    onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
          final unGaurdedRoutes = [
            routePaths.auth.login,
            routePaths.auth.signup,
          ];

          if (router.routerDelegate.currentConfiguration.isNotEmpty &&
              !unGaurdedRoutes.contains(router.state.uri.path) &&
              !options.path.contains("token_refresh")) {
            final auth = ref.read(authProvider).value;
            final authNotifier = ref.read(authProvider.notifier);
            final api = ref.read(apiProvider);

            if ((auth?.refresh ?? '').isEmpty ||
                JwtDecoder.isExpired(auth?.refresh ?? '')) {
              router.go(routePaths.auth.login);
              return;
            }

            if ((auth?.access ?? '').isEmpty ||
                JwtDecoder.isExpired(auth?.access ?? '')) {
              api.clearToken();
              final tokenRefresh = await api.auth.authTokenRefreshCreate(
                body: TokenRefreshRequest(refresh: auth?.refresh ?? ''),
              );

              api.token = tokenRefresh.access;
              authNotifier.updateToken(
                tokenRefresh.access,
                tokenRefresh.refresh,
              );

              options.headers.addAll({
                "Authorization": "Bearer ${tokenRefresh.access}",
              });
            }
          }
          return handler.next(options);
        },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      return handler.next(response);
    },
    onError: (DioException error, ErrorInterceptorHandler handler) {
      if (error.response?.statusCode == 401) {
        router.go(routePaths.auth.login);
      }
      return handler.next(error);
    },
  );
}
