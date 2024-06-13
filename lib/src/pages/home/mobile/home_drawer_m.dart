import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/core/app_routes.dart';
import 'package:gautham_protfolio_new/src/utilities/paddings.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';

import 'home_drawer_item_m.dart';

class MobileHomeDrawer extends StatelessWidget {
  const MobileHomeDrawer({super.key, required this.selectedIndex, required this.itemSelected});

  final int selectedIndex;
  final Function(int index) itemSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(.2),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesMyPic,),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: ListTile(
              trailing: IconButton(onPressed: () {
                AppRouter.pop();
              }, icon: Ink(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(.5),
                  ),
                  padding: const EdgeInsets.all(2),
                  child: const Icon(Icons.close, color: Colors.white,))),
            )
          ),
        ),
        MobileDrawertem(
          text: 'Home',
          onTap: () {
            itemSelected(0);
          },
          selected: selectedIndex == 0,
        ),
        Sizes.h12,
        MobileDrawertem(
          text: 'About Me',
          onTap: () {
            itemSelected(1);
          },
          selected: selectedIndex == 1,
        ),
        Sizes.h12,
        MobileDrawertem(
          text: 'Services',
          onTap: () {
            itemSelected(2);
          },
          selected: selectedIndex == 2,
        ),
        Sizes.h12,
        MobileDrawertem(
          text: 'Projects',
          onTap: () {
            itemSelected(3);
          },
          selected: selectedIndex == 3,
        ),
        Sizes.h12,
        MobileDrawertem(
          text: 'Contact',
          onTap: () {
            itemSelected(4);
          },
          selected: selectedIndex == 4,
        ),
        Sizes.h12,
        const Spacer(),
        Padding(
          padding: Paddings.p12.horizontally,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Download CV'),
            ),
          ),
        ),
        Sizes.h12,
        // const SocialMediaIcons(),
        Sizes.h56,
      ],
    );
  }
}
