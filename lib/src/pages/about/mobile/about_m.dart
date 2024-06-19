import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/src/pages/about/widgets/skill_item.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class AboutM extends StatelessWidget {
  const AboutM({super.key});

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
              Text(
                'About Me ',
                style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: constraints.maxWidth * 0.098,
                ),
              ),
              Sizes.h16,
              Text(
                '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                style: context.tm.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: constraints.maxWidth * 0.036,
                ),
              ),
              Sizes.h16,
              Expanded(child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkillItem(
                      constraints: constraints,
                      title: 'Flutter',
                      pct: 90,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: 'Java',
                      pct: 80,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: '.NET',
                      pct: 60,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: 'Python',
                      pct: 60,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: 'MS-SQL',
                      pct: 60,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: 'Firebase',
                      pct: 80,
                      mobile: true,
                    ),
                    Sizes.h50,
                    SkillItem(
                      constraints: constraints,
                      title: 'Android Native',
                      pct: 60,
                      mobile: true,
                    ),
                    Sizes.h50,
                  ],
                ),
              )),
            ],
          ).animate().fade(duration: 350.ms);
        },
      ),
    );
  }
}
