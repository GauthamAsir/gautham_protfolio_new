import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

class MobileDrawertem extends ConsumerWidget {
  const MobileDrawertem({
    super.key,
    required this.text,
    required this.onTap,
    required this.selected,
  });

  final String text;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context, ref) {
    var theme = ref.watch(themeMode);

    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: selected
                ? AppColors.primaryColor
                .withOpacity(theme == ThemeMode.light ? .1 : .3)
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Text(
              text,
              style: context.tm.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}