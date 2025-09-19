import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/app/auth/login_page.dart';
import 'package:veezo/app/auth/signup_page.dart';
import 'package:veezo/app/chat/chat_page.dart';
import 'package:veezo/app/credits_and_plans/credits_and_plans_page.dart';

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
              ChatPage(chatId: state.pathParameters['chatId']),
        ),
      ],
    ),
    GoRoute(
      path: '/credits_and_plans',
      builder: (context, state) => CreditsAndPlansPage(),
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
  creditsAndPlans: "/credits_and_plans",
  auth: (login: "/auth/login", signup: "/auth/signup"),
);
