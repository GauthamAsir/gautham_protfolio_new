import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/about/desktop/about_d.dart';
import 'package:gautham_protfolio_new/src/pages/about/mobile/about_m.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

import 'widgets/skill_item.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: AboutM(), desktop: AboutD());
  }
}
