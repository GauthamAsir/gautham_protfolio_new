import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';

class DesktopAppBarItem extends ConsumerWidget {
  const DesktopAppBarItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.selected,
    required this.constraints,
  });

  final String text;
  final VoidCallback onTap;
  final bool selected;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Text(
              text,
              style: context.tm.copyWith(
                  fontWeight: FontWeight.w500,
                  color: selected ? AppColors.primaryColor : null,
                  fontSize: constraints.maxHeight * 0.32),
            ),
          ),
        ),
        Container(
          width: (constraints.maxHeight * 0.32 * (text.length / 2)),
          margin: const EdgeInsets.symmetric(horizontal: 14),
          height: 2,
          color: selected ? AppColors.primaryColor : null,
        )
      ],
    );
  }
}
