import 'package:flutter/material.dart';
import 'package:hoqooq/core/routing/app_router.dart';
import 'package:hoqooq/core/services/service_locator.dart';
import 'package:hoqooq/core/theme/app_theme.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const Hoqooq());
}

class Hoqooq extends StatelessWidget {
  const Hoqooq({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
      locale: const Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
