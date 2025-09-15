import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:veezo/domain/di.dart';
import 'package:veezo/i18n/strings.g.dart';
import 'package:veezo/routes.dart';
import 'package:veezo/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(AppLocale.fa);

  await dotenv.load(fileName: envFile);

  configureDependencies();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(TranslationProvider(child: ProviderScope(child: const VeezoApp())));
}

class VeezoApp extends StatelessWidget {
  const VeezoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp.router(
      title: 'Veezo AI',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorSchemes.darkDefaultColor.copyWith(
          background: () => Colors.black,
          card: () => Colors.zinc.shade900,
          muted: () => Colors.zinc.shade600,
          foreground: () => Colors.white,
        ),
        radius: 0.8,
      ),
      scaling: AdaptiveScaling(1),

      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      routerConfig: router,
    );
  }
}
