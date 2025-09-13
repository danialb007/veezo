import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_web/web_only.dart' as web;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/api.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/generated/export.dart';
import 'package:veezo/routes.dart';

final _emailKey = const TextFieldKey(#email);
final _passwordKey = const TextFieldKey(#password);

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final login = ref.watch(authProvider);
    ref.listen(authProvider, (previous, next) {
      if (next.value != null) {
        context.go(routePaths.chat.path);
      }
    });

    return Scaffold(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 160,
                width: 160,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Card(
              child: Form(
                onSubmit: (context, values) async {
                  final username = _emailKey[values];
                  final password = _passwordKey[values];

                  await ref
                      .read(authProvider.notifier)
                      .login(
                        LoginRequest(email: username!, password: password!),
                      );
                },
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Login to your account").h3,
                        Text(
                          "Enter your email below to login to your account",
                        ).firstP,
                      ],
                    ),
                    FormField(
                      key: _emailKey,
                      label: Text("Email"),
                      validator: EmailValidator(),
                      child: TextField(placeholder: Text('m@mail.com')),
                    ),
                    FormField(
                      key: _passwordKey,
                      label: Text("Password"),
                      validator: NotEmptyValidator(),
                      showErrors: {FormValidationMode.changed},
                      child: TextField(obscureText: true),
                    ),
                    FormErrorBuilder(
                      builder: (context, errors, child) {
                        return SubmitButton(
                          trailing: login.isLoading
                              ? AspectRatio(
                                  aspectRatio: 1,
                                  child: CircularProgressIndicator(
                                    onSurface: true,
                                  ),
                                )
                              : null,
                          child: Text("Login"),
                        );
                      },
                    ),
                    // _GoogleSigninButton(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?").muted,
                        Gap(4),
                        Button.link(
                          onPressed: () => context.go(routePaths.auth.signup),
                          style: ButtonStyle.link(
                            density: ButtonDensity.compact,
                          ),
                          child: Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text("Veezo AI", textAlign: TextAlign.center).h4,
          ],
        ),
      ),
    );
  }
}

class _GoogleSigninButton extends HookConsumerWidget {
  const _GoogleSigninButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      final googleSignIn = GoogleSignIn.instance;
      unawaited(
        googleSignIn
            .initialize(
              clientId:
                  "161508267443-0qb8j6n0ooor3h1mt9mtpsjapra3tpri.apps.googleusercontent.com",
            )
            .then((value) {
              googleSignIn.authenticationEvents
                  .listen((GoogleSignInAuthenticationEvent e) {
                    switch (e) {
                      case GoogleSignInAuthenticationEventSignIn():
                        signInWithGoogle(
                          ref,
                          idToken: e.user.authentication.idToken,
                        );
                        break;
                      default:
                    }
                  })
                  .onError((e) {
                    e;
                  });
            }),
      );
      return null;
    }, []);

    if (!kIsWeb) {
      return Button.secondary(
        onPressed: () {
          signInWithGoogle(ref);
        },
        child: Text("Login with Google"),
      );
    }
    return web.renderButton(
      configuration: web.GSIButtonConfiguration(
        size: web.GSIButtonSize.large,
        theme: web.GSIButtonTheme.outline,
        minimumWidth: MediaQuery.sizeOf(context).width,
        logoAlignment: web.GSIButtonLogoAlignment.center,
      ),
    );
  }

  Future<void> signInWithGoogle(WidgetRef ref, {String? idToken}) async {
    if (!kIsWeb) {
      final _googleSignIn = GoogleSignIn.instance;
      final GoogleSignInAccount? googleUser = await _googleSignIn.authenticate(
        scopeHint: ['email', 'profile'],
      );
      if (googleUser == null) {
        // User cancelled the sign-in
        return;
      }

      idToken = await googleUser.authentication.idToken;
    }

    if (idToken != null) {
      // Send the Google Access Token to your Django backend
      final response = ref
          .read(apiProvider)
          .auth
          .authGoogleLoginCreate(
            body: SocialLoginRequest(accessToken: idToken),
          );

      // if (response.statusCode == 200) {
      //   final Map<String, dynamic> data = jsonDecode(response.body);
      //   final String? djangoToken = data['key']; // Or 'access' if using JWT
      //   // Store and use the Django token for subsequent API calls
      //   print('Django Token: $djangoToken');
      // } else {
      //   print('Failed to authenticate with Django: ${response.body}');
      // }
    }
  }
}
