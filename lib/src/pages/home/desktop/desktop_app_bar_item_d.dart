import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

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
    var theme = ref.watch(themeMode);

    return InkWell(
      onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(5),),
      child: Ink(
        decoration: BoxDecoration(
          color: selected
              ? AppColors.primaryColor
              : null,
          borderRadius: const BorderRadius.all(Radius.circular(5),)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Text(
            text,
            style: context.tm.copyWith(
              fontWeight: FontWeight.w500,
              color: selected ? Colors.white : null,
              fontSize: constraints.maxHeight * 0.32
            ),
          ),
        ),
      ),
    );
  }
}