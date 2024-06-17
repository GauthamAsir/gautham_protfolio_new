import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.image,
    required this.name,
    required this.desc,
    required this.type,
    required this.constraints,
  });

  final String image, name, desc, type;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(7),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(7),),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: constraints.maxWidth / 4,
                height: constraints.maxHeight / 2,
              ),
            ),
            Sizes.h22,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: context.tm.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                      fontSize: constraints.maxHeight * 0.029,
                    ),
                  ),
                  Sizes.h12,
                  Text(
                    name,
                    style: context.tm.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: constraints.maxHeight * 0.036,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
