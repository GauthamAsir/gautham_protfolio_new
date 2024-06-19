import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/services/desktop/services_d.dart';
import 'package:gautham_protfolio_new/src/pages/services/mobile/services_m.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServicesM(),
      desktop: ServicesD(),
    );
  }
}
