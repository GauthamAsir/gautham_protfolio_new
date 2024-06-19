import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/pages/services/widgets/services_item.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ServicesM extends StatelessWidget {
  const ServicesM({super.key});

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
                'Services',
                style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: constraints.maxWidth * 0.098,
                ),
              ),
              Sizes.h16,
              SelectableText(
                '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                style: context.tm.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: constraints.maxWidth * 0.036,
                ),
              ),
              Sizes.h24,
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ServicesItem(
                        constraints: constraints,
                        mobile: true,
                        assetName: Assets.imagesAppDesign,
                        text: 'Android App',
                        desc:
                        'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                      ),
                      Sizes.h32,
                      ServicesItem(
                        constraints: constraints,
                        mobile: true,
                        assetName: Assets.imagesAppDesign,
                        text: 'ios App',
                        desc:
                        'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                      ),
                      Sizes.h32,
                      ServicesItem(
                        constraints: constraints,
                        mobile: true,
                        assetName: Assets.imagesWebDesign,
                        text: 'Web App',
                        desc:
                        'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                      ),
                      Sizes.h32,
                      ServicesItem(
                        constraints: constraints,
                        mobile: true,
                        assetName: Assets.imagesProjectMaintain,
                        text: 'Maintenance',
                        desc:
                        'Lorem ipsum dolor sit amet consectetur. Morbi diam nisi nam diam interdum',
                      ),
                      Sizes.h32,
                    ],
                  ),
                ),
              ),
            ],
          ).animate().fade(duration: 350.ms);
        },
      ),
    );
  }
}
