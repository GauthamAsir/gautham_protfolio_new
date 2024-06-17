import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/home/desktop/home_d.dart';
import 'package:gautham_protfolio_new/src/pages/home/mobile/home_m.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }
}
