import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/pages/projects/widgets/project_item.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ProjectsD extends StatelessWidget {
  const ProjectsD({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sizes.h24,
              Expanded(
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          'My Projects',
                          style: context.tm.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: constraints.maxHeight * 0.098),
                        ),
                      ),
                      Sizes.h16,
                      Center(
                        child: SizedBox(
                          width: constraints.maxWidth / 2,
                          child: SelectableText(
                            '''Expect the best, plan for the worst, and prepare to be surprised.''',
                            style: context.tm.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: constraints.maxHeight * 0.021),
                          ),
                        ),
                      ),
                      Sizes.h24,
                      Sizes.h24,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProjectItem(
                            image: Assets.imagesJustAudio,
                            name: 'Just Audio',
                            desc:
                            '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                            type: 'Audio',
                            constraints: constraints,
                          ),
                          SizedBox(width: constraints.maxWidth * 0.056,),
                          ProjectItem(
                            image: Assets.imagesFasheo,
                            name: 'Fasheo',
                            desc:
                            '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                            type: 'E-commerce',
                            constraints: constraints,
                          ),
                        ],
                      ),
                      Sizes.h72,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProjectItem(
                            image: Assets.imagesSmartSwitch,
                            name: 'Smart Switch Board',
                            desc:
                            '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                            type: 'electronics',
                            constraints: constraints,
                          ),
                          SizedBox(width: constraints.maxWidth * 0.056,),
                          ProjectItem(
                            image: Assets.imagesWhatsappStatus,
                            name: 'WhatsApp Status Saver',
                            desc:
                            '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                            type: 'files',
                            constraints: constraints,
                          ),
                        ],
                      ),
                      Sizes.h100,
                    ],
                  )
              )
            ],
          ).animate().fade(duration: 350.ms);
        },
      ),
    );
  }
}
