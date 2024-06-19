import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/core/app_routes.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/desktop/dashboard_d.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/mobile/dashboard_drawer_m.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/mobile/dashboard_m.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

import 'provider/dashboard_provider.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final dash = ref.watch(dashboardProvider);

    final theme = ref.watch(themeMode);

    return Scaffold(
      key: key,
      drawer: Responsive.isMobile(context) || Responsive.isMobileLarge(context)
          ? MobileDashboardDrawer(
              selectedIndex: dash.selectedIndex,
              itemSelected: (index) {
                dash.onItemSelected(index);
                key.currentState?.closeDrawer();
              },
            )
          : null,
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  key.currentState?.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: theme == ThemeMode.light ? Colors.black : Colors.white,
                ),
              ),
              title: SelectableText(
                'Gautham',
                style: context.hl.copyWith(fontWeight: FontWeight.w600),
              ),
            )
          : null,
      body: LayoutBuilder(
        builder: (context, mainConstraints) {
          return Responsive(
            mobile: DashboardM(mainConstraints: mainConstraints),
            desktop: DashboardD(mainConstraints: mainConstraints),
          );
        },
      ),
    );
  }
}
