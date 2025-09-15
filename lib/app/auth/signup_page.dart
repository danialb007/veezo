import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/domain/auth/auth_notifier.dart';
import 'package:veezo/generated/export.dart';
import 'package:veezo/i18n/strings.g.dart';
import 'package:veezo/routes.dart';

final _emailKey = const TextFieldKey(#email);
final _passwordKey = const TextFieldKey(#password);
final _passwordConfirmKey = const TextFieldKey(#passwordConfirm);

class SignupPage extends HookConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final a = useValueNotifier(FormController());
    final auth = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      if (!next.isLoading && !next.hasError) {
        showToast(
          context: context,
          builder: (context, overlay) {
            return SurfaceCard(
              borderColor: Colors.green.shade700,
              fillColor: Colors.green.shade900,
              filled: true,
              child: Basic(
                title: Text('حساب کاربری ایجاد شد.'),
                subtitle: Text('برای ورود، ایمیل و رمز خود را وارد کنید'),
              ),
            );
          },
          location: ToastLocation.bottomCenter,
        );
        context.go(routePaths.auth.login);
      }
    });

    return Scaffold(
      child: Padding(
        padding: const EdgeInsets.all(24),
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
                controller: a.value,
                onSubmit: (context, values) async {
                  final email = _emailKey[values];
                  final password = _passwordKey[values];
                  final passwordConfirm = _passwordConfirmKey[values];
                  return await ref
                      .read(authProvider.notifier)
                      .signup(
                        SignupRequest(
                          email: email!,
                          password: password!,
                          passwordConfirm: passwordConfirm!,
                        ),
                      );
                },
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(t.auth.signUp.createAnAccount).h3,
                        Text(
                          t.auth.signUp.enterYourEmailBelowToCreateYourAccount,
                        ).firstP,
                      ],
                    ),
                    FormField(
                      key: _emailKey,
                      label: Text(t.email),
                      validator:
                          EmailValidator(message: t.auth.invalidEmail) &
                          ValidationMode(
                            ConditionalValidator((value) async {
                              final email = value;
                              final password = a.value.getValue(_passwordKey)!;
                              final passwordConfirm = a.value.getValue(
                                _passwordConfirmKey,
                              )!;
                              await ref
                                  .read(authProvider.notifier)
                                  .signup(
                                    SignupRequest(
                                      email: email!,
                                      password: password,
                                      passwordConfirm: passwordConfirm,
                                    ),
                                  );
                              return !ref.read(authProvider).hasError;
                            }, message: 'این حساب کاربری قبلا ایجاد شده'),
                            mode: {FormValidationMode.submitted},
                          ),
                      child: TextField(placeholder: Text('m@mail.com')),
                    ),
                    FormField(
                      key: _passwordKey,
                      label: Text(t.password),
                      // validator: SafePasswordValidator(),
                      child: TextField(obscureText: true),
                    ),
                    FormField(
                      key: _passwordConfirmKey,
                      label: Text(t.auth.signUp.confirmPassword),
                      showErrors: {FormValidationMode.changed},
                      validator: CompareWith.equal(
                        _passwordKey,
                        message: t.auth.signUp.passwordsDontMatch,
                      ),
                      child: TextField(obscureText: true),
                    ),
                    FormErrorBuilder(
                      builder: (context, error, child) {
                        return SubmitButton(
                          trailing: auth.isLoading
                              ? AspectRatio(
                                  aspectRatio: 1,
                                  child: CircularProgressIndicator(
                                    onSurface: true,
                                  ),
                                )
                              : null,
                          child: Text(t.auth.signUp.createAccount),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(t.auth.signUp.alreadyHaveAnAccount).muted,
                        Gap(4),
                        Button.link(
                          onPressed: () => context.go(routePaths.auth.login),
                          style: ButtonStyle.link(
                            density: ButtonDensity.compact,
                          ),
                          child: Text(t.auth.login.login),
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
