import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/pages/projects/widgets/project_item.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ProjectsM extends StatelessWidget {
  const ProjectsM({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Sizes.h24,
              Expanded(
                  child: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Text(
                        'My Projects',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: constraints.maxWidth * 0.098,),
                      ),
                      Sizes.h16,
                      SelectableText(
                        '''Expect the best, plan for the worst, and prepare to be surprised.''',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: constraints.maxWidth * 0.036,),
                      ),
                      Sizes.h24,
                      ProjectItem(
                        image: Assets.imagesJustAudio,
                        mobile: true,
                        name: 'Just Audio',
                        desc:
                        '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                        type: 'Audio',
                        constraints: constraints,
                      ),
                      Sizes.h56,
                      ProjectItem(
                        image: Assets.imagesFasheo,
                        mobile: true,
                        name: 'Fasheo',
                        desc:
                        '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                        type: 'E-commerce',
                        constraints: constraints,
                      ),
                      Sizes.h56,
                      ProjectItem(
                        image: Assets.imagesSmartSwitch,
                        mobile: true,
                        name: 'Smart Switch Board',
                        desc:
                        '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                        type: 'electronics',
                        constraints: constraints,
                      ),
                      Sizes.h56,
                      ProjectItem(
                        image: Assets.imagesWhatsappStatus,
                        mobile: true,
                        name: 'WhatsApp Status Saver',
                        desc:
                        '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                        type: 'files',
                        constraints: constraints,
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
