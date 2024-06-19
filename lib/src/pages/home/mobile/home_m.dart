import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              'Hi I am ',
              style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: constraints.maxWidth * 0.036),
            ),
            Sizes.h4,
            Text(
              'Gautham Asir',
              style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: constraints.maxWidth * 0.048,
                  color: AppColors.primaryColor),
            ),
            Sizes.h16,
            Text(
              'Mobile App',
              style: context.tm.copyWith(
                  fontWeight: FontWeight.w600,
                  height: 0.6,
                  fontSize: constraints.maxWidth * 0.12),
            ),
            Padding(
              padding: EdgeInsets.only(left: constraints.maxWidth * 0.24),
              child: Text(
                'Developer',
                style: context.tm.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: constraints.maxWidth * 0.12),
              ),
            ),
            Sizes.h28,
            Center(
              child: Container(
                height: constraints.maxHeight / 4,
                width: constraints.maxWidth * 0.538,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesMyPic),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter),
                    shape: BoxShape.circle),
              ),
            ),
            Sizes.h28,
            Text(
              '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
              style: context.tm.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: constraints.maxWidth * 0.036),
            ),
            Sizes.h22,
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Hire Me',
                style: context.tm.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: constraints.maxWidth * 0.048),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ).animate().fade(duration: 350.ms),
      ),
    );
  }
}
