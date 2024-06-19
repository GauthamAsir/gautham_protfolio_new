import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

class ServicesItem extends ConsumerWidget {
  const ServicesItem({
    super.key,
    required this.constraints,
    required this.text,
    required this.desc,
    required this.assetName,
    this.mobile = false,
  });

  final BoxConstraints constraints;
  final String text, desc, assetName;
  final bool mobile;

  @override
  Widget build(BuildContext context, ref) {
    final theme = ref.watch(themeMode);

    return Container(
      width: (mobile ? constraints.maxWidth : constraints.maxHeight) * (mobile ? 0.8 : 0.330),
      height: (mobile ? constraints.maxWidth : constraints.maxHeight) * (mobile ? 0.54 : 0.346),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: theme == ThemeMode.light
            ? AppColors.cardColor
            : AppColors.darkCardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sizes.h32,
          // Spacer(),
          Image.asset(
            assetName,
            height: (mobile ? constraints.maxWidth : constraints.maxHeight) * (mobile ? 0.15 : 0.082),
          ),
          Sizes.h16,
          Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.tm.copyWith(
              fontWeight: FontWeight.w600,
              fontSize:
                  (mobile ? constraints.maxWidth : constraints.maxHeight) *
                      0.040,
            ),
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
                    fontSize: (mobile
                            ? constraints.maxWidth
                            : constraints.maxHeight) *
                        (mobile ? 0.036 : 0.021),
                  ),
                ),
                Text(
                  'See more',
                  overflow: TextOverflow.clip,
                  style: context.tm.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: (mobile
                            ? constraints.maxWidth
                            : constraints.maxHeight) *
                        (mobile ? 0.036 : 0.021),
                  ),
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
