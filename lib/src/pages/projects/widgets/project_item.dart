import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.image,
    required this.name,
    required this.desc,
    required this.type,
    required this.constraints,
    this.mobile = false,
  });

  final String image, name, desc, type;
  final BoxConstraints constraints;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(7),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(7),),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: mobile ? constraints.maxWidth : (constraints.maxWidth / 4),
                height: constraints.maxHeight / 3,
              ),
            ),
            mobile ? Sizes.h12 : Sizes.h22,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: context.tm.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                      fontSize: (mobile ? constraints.maxWidth : constraints.maxHeight) * (mobile ? 0.032 : 0.029),
                    ),
                  ),
                  mobile ? const SizedBox() : Sizes.h12,
                  Text(
                    name,
                    style: context.tm.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: (mobile ? constraints.maxWidth : constraints.maxHeight) * (mobile ? 0.042 : 0.036),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}