import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/dashboard_page.dart';

import 'core/app_routes.dart';
import 'utilities/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(builder: (context, ref, child) {
        return MaterialApp(
          title: 'Gautham Portfolio',
          debugShowCheckedModeBanner: false,
          navigatorKey: AppRouter.navigatorKey,
          scaffoldMessengerKey: AppRouter.scaffoldMessengerKey,
          onGenerateRoute: AppRouter.onNavigate,
          locale: const Locale('en', ''),
          theme: ref.watch(lightTheme),
          darkTheme: ref.watch(darkTheme),
          themeMode: ref.watch(themeMode),
          home: const DashboardPage(),
        );
      }),
    );
  }
}
