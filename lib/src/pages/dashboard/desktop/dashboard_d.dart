import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/pages/about/about_page.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/provider/dashboard_provider.dart';
import 'package:gautham_protfolio_new/src/pages/home/home_page.dart';
import 'package:gautham_protfolio_new/src/pages/projects/projects_page.dart';
import 'package:gautham_protfolio_new/src/pages/services/services_page.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

import 'dashboard_app_bar_d.dart';

class DashboardD extends ConsumerWidget {
  const DashboardD({super.key, required this.mainConstraints});

  final BoxConstraints mainConstraints;

  @override
  Widget build(BuildContext context, ref) {

    final dash = ref.watch(dashboardProvider);

    return Column(
      children: [
        Sizes.h12,
        DashboardAppBarDesktop(
          height: mainConstraints.maxHeight * 0.067,
          selectedIndex: dash.selectedIndex,
          itemSelected: dash.onItemSelected,
        ),
        Expanded(
          child: PageView(
            controller: dash.pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              dash.selectedIndex = index;
            },
            children: const [
              HomePage(),
              AboutPage(),
              ServicesPage(),
              ProjectsPage(),
            ],
          ),
        ),
      ],
    );
  }
}
