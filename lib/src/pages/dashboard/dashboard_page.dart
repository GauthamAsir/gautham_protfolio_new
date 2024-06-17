import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/pages/about/about_page.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/desktop/dashboard_app_bar_d.dart';
import 'package:gautham_protfolio_new/src/pages/home/home_page.dart';
import 'package:gautham_protfolio_new/src/pages/projects/projects_page.dart';
import 'package:gautham_protfolio_new/src/pages/services/services_page.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

import 'provider/dashboard_provider.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    final dash = ref.watch(dashboardProvider);

    return Scaffold(
      body: LayoutBuilder(builder: (context, mainConstraints) {
        return Column(
          children: [
            Sizes.h12,
            DashboardAppBarDesktop(
              height: mainConstraints.maxHeight * 0.067,
              selectedIndex: dash.selectedIndex,
              itemSelected: (index) {
                if (index == dash.selectedIndex) {
                  return;
                }
                /// TEMP
                if (index > 3) {
                  return;
                }

                dash.pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
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
      }),
    );
  }
}
