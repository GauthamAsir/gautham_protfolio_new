import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/projects/desktop/projects_d.dart';
import 'package:gautham_protfolio_new/src/pages/projects/mobile/projects_m.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProjectsM(),
      desktop: ProjectsD(),
    );
  }
}
