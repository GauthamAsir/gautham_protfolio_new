import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/core/widgets/custom_builder.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    super.key,
    required this.constraints,
    required this.title,
    required this.pct,
    this.mobile = false,
  });

  final BoxConstraints constraints;
  final String title;
  final double pct;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomBuilder(builder: (context, child1, child2) {
          return !mobile ? child1! : Row(
            children: [
              Expanded(
                child: child1!,
              ),
              mobile
                  ? Text(
                '${pct.toStringAsFixed(0)}%',
                style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: constraints.maxWidth * 0.032,
                ),
              )
                  : const SizedBox()
            ],
          );
        },
        child: Text(
          title,
          style: context.tm.copyWith(
            fontWeight: FontWeight.w600,
            fontSize:
            (mobile ? constraints.maxWidth : constraints.maxHeight) *
                0.036,
          ),
        ),),
        Sizes.h12,
        SizedBox(
          width: mobile ? constraints.maxWidth : constraints.maxHeight * 0.15,
          height: mobile ? 3 : constraints.maxHeight * 0.15,
          child: Stack(
            children: [
              SizedBox.expand(
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: pct / 100),
                  duration: const Duration(milliseconds: 800),
                  builder: (context, value, _) => mobile
                      ? LinearProgressIndicator(
                          value: value,
                        )
                      : CircularProgressIndicator(value: value),
                ),
              ),
              mobile
                  ? const SizedBox()
                  : Center(
                      child: Text(
                        '${pct.toStringAsFixed(0)}%',
                        style: context.tm.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: (mobile
                                  ? constraints.maxWidth
                                  : constraints.maxHeight) *
                              0.032,
                        ),
                      ),
                    )
            ],
          ),
        )
      ],
    );
  }
}
