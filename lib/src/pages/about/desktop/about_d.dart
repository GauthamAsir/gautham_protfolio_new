import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/pages/about/widgets/skill_item.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class AboutD extends StatelessWidget {
  const AboutD({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: constraints.maxHeight * 0.617,
                      width: constraints.maxWidth * 0.538,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Assets.imagesMyPic),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter),
                          shape: BoxShape.circle),
                    ),
                  ),
                  Sizes.w72,
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About Me ',
                          style: context.tm.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: constraints.maxHeight * 0.098),
                        ),
                        Sizes.h16,
                        Text(
                          '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                          style: context.tm.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: constraints.maxHeight * 0.021),
                        ),
                        Sizes.h16,
                        Wrap(
                          runSpacing: 50,
                          spacing: 50,
                          children: [
                            SkillItem(
                              constraints: constraints,
                              title: 'Flutter',
                              pct: 90,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: 'Java',
                              pct: 80,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: '.NET',
                              pct: 60,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: 'Python',
                              pct: 60,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: 'MS-SQL',
                              pct: 60,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: 'Firebase',
                              pct: 80,
                            ),
                            SkillItem(
                              constraints: constraints,
                              title: 'Android Native',
                              pct: 60,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Sizes.w72,
                ],
              ),
              const Spacer(),
            ],
          ).animate().fade(duration: 350.ms);
        },
      ),
    );
  }
}
