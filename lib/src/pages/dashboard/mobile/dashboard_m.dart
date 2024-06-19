import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/pages/about/about_page.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/provider/dashboard_provider.dart';
import 'package:gautham_protfolio_new/src/pages/home/home_page.dart';
import 'package:gautham_protfolio_new/src/pages/projects/projects_page.dart';
import 'package:gautham_protfolio_new/src/pages/services/services_page.dart';

class DashboardM extends ConsumerWidget {
  const DashboardM({super.key, required this.mainConstraints});

  final BoxConstraints mainConstraints;

  @override
  Widget build(BuildContext context, ref) {

    final dash = ref.watch(dashboardProvider);

    return PageView(
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
    );
  }
}
