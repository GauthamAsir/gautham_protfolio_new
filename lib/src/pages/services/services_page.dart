import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

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

class ServicesItem extends ConsumerWidget {
  const ServicesItem({
    super.key,
    required this.constraints,
    required this.text,
    required this.desc, required this.assetName,
  });

  final BoxConstraints constraints;
  final String text, desc, assetName;

  @override
  Widget build(BuildContext context, ref) {

    final theme = ref.watch(themeMode);

    return Container(
      width: constraints.maxHeight * 0.330,
      height: constraints.maxHeight * 0.346,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
          color: theme == ThemeMode.light ? AppColors.cardColor : AppColors.darkCardColor,
          borderRadius: const BorderRadius.all(Radius.circular(14),),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sizes.h32,
          // Spacer(),
          Image.asset(
            assetName,
            height: constraints.maxHeight * 0.082,
          ),
          Sizes.h16,
          Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.tm.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: constraints.maxHeight * 0.040),
          ),
          Expanded(
            child: Wrap(
              children: [
                Text(
                  desc,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: context.tm.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxHeight * 0.021),
                ),
                Text(
                  'See more',
                  overflow: TextOverflow.clip,
                  style: context.tm.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxHeight * 0.021),
                ),
              ],
            ),
          ),
          Sizes.h12,
        ],
      ),
    );
  }
}
