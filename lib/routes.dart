import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/app/auth/login_page.dart';
import 'package:veezo/app/auth/signup_page.dart';
import 'package:veezo/app/chat/chat_page.dart';

final router = GoRouter(
  initialLocation: '/chat',
  redirect: (context, state) {
    final unGaurdedRoutes = [routePaths.auth.login, routePaths.auth.signup];

    if (!unGaurdedRoutes.contains(state.uri.path)) {
      // if (!di<AuthBloc>().isAuthenticated) {
      //   return routePaths.auth.login;
      // }
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/chat',
      builder: (context, state) => ChatPage(),
      routes: [
        GoRoute(
          path: '/:chatId',
          builder: (context, state) =>
              ChatPage(chatId: state.pathParameters['userId']),
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => SizedBox(),
      routes: [
        GoRoute(path: 'login', builder: (context, state) => LoginPage()),
        GoRoute(path: 'signup', builder: (context, state) => SignupPage()),
      ],
    ),
  ],
);

final routePaths = (
  chat: (path: "/chat", detail: (String chatId) => "/chat/$chatId"),
  auth: (login: "/auth/login", signup: "/auth/signup"),
);
