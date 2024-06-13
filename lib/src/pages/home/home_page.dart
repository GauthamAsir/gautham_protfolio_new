import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/provider/dashboard_provider.dart';
import 'package:gautham_protfolio_new/src/pages/home/desktop/home_d.dart';
import 'package:gautham_protfolio_new/src/pages/home/mobile/home_m.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final dash = ref.watch(dashboardProvider);

    return Responsive(mobile: HomeMobile(), desktop: HomeDesktop(
      selectedIndex: dash.selectedIndex,
      itemSelected: (index) {
        if(index == dash.selectedIndex) {
          return;
        }

        dash.selectedIndex = index;
      },
    ));
  }
}
