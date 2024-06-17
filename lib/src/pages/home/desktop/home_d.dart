import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/utilities/app_colors.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi I am ',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: constraints.maxHeight * 0.036),
                      ),
                      Sizes.h4,
                      Text(
                        'Gautham Asir',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: constraints.maxHeight * 0.048,
                            color: AppColors.primaryColor),
                      ),
                      Sizes.h16,
                      Text(
                        'Mobile App',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w600,
                            height: 0.6,
                            fontSize: constraints.maxHeight * 0.12),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: constraints.maxWidth * 0.24),
                        child: Text(
                          'Developer',
                          style: context.tm.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: constraints.maxHeight * 0.12),
                        ),
                      ),
                      Sizes.h28,
                      Text(
                        '''Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra''',
                        style: context.tm.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: constraints.maxHeight * 0.032),
                      ),
                      Sizes.h22,
                      SizedBox(
                        width: constraints.maxWidth * 0.12,
                        // height: mainConstraints.maxHeight * 0.052,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Hire Me',
                            style: context.tm.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: constraints.maxHeight * 0.027),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Sizes.w72,
                Expanded(
                  flex: 2,
                  child: Container(
                    height: constraints.maxHeight * 0.617,
                    width: constraints.maxWidth * 0.538,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.imagesMyPic),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ).animate().fade(duration: 350.ms),
      ),
    );
  }
}
