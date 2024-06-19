import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/core/widgets/responsive.dart';
import 'package:gautham_protfolio_new/src/pages/projects/desktop/projects_d.dart';
import 'package:gautham_protfolio_new/src/pages/projects/mobile/projects_m.dart';

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
