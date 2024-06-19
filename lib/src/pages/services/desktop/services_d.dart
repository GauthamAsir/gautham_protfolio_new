import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/pages/services/widgets/services_item.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ServicesD extends StatelessWidget {
  const ServicesD({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'Services',
                style: context.tm.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: constraints.maxHeight * 0.098),
              ),
              Sizes.h16,
              SizedBox(
                width: constraints.maxWidth / 2,
                child: SelectableText(
                  '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                  style: context.tm.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxHeight * 0.021),
                ),
              ),
              Sizes.h24,
              Sizes.h24,
              Wrap(
                spacing: 32,
                runSpacing: 32,
                children: [
                  ServicesItem(
                    constraints: constraints,
                    assetName: Assets.imagesAppDesign,
                    text: 'Android App',
                    desc: 'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                  ),
                  ServicesItem(
                    constraints: constraints,
                    assetName: Assets.imagesAppDesign,
                    text: 'ios App',
                    desc: 'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                  ),
                  ServicesItem(
                    constraints: constraints,
                    assetName: Assets.imagesWebDesign,
                    text: 'Web App',
                    desc: 'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                  ),
                  ServicesItem(
                    constraints: constraints,
                    assetName: Assets.imagesProjectMaintain,
                    text: 'Maintenance',
                    desc: 'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                  ),
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
