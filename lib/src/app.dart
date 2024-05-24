import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/dashboard_page.dart';

import 'core/app_routes.dart';
import 'utilities/themes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Consumer(builder: (context, ref, child) {
            return MaterialApp(
              title: 'CFC Artist',
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
          });
        },
      ),
    );
  }
}
