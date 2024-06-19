import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/generated/assets.dart';
import 'package:gautham_protfolio_new/src/core/app_routes.dart';
import 'package:gautham_protfolio_new/src/utilities/constants.dart';
import 'package:gautham_protfolio_new/src/utilities/paddings.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

import 'dashboard_drawer_item_m.dart';

class MobileDashboardDrawer extends StatelessWidget {
  const MobileDashboardDrawer(
      {super.key, required this.selectedIndex, required this.itemSelected});

  final int selectedIndex;
  final Function(int index) itemSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
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
                  image: AssetImage(
                    Assets.imagesMyPic,
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: ListTile(
                leading: Consumer(
                  builder: (context, ref, child) {
                    var theme = ref.watch(themeMode);

                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.6),
                          shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {
                          ref.read(themeMode.notifier).state =
                              theme == ThemeMode.light
                                  ? ThemeMode.dark
                                  : ThemeMode.light;
                        },
                        icon: AnimatedSwitcher(
                          duration: Constants.smallDuration,
                          child: theme == ThemeMode.light
                              ? Icon(
                                  Icons.dark_mode_outlined,
                                  key: UniqueKey(),
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.light_mode_outlined,
                                  key: UniqueKey(),
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    );
                  },
                ),
                trailing: IconButton(
                  onPressed: () {
                    AppRouter.pop();
                  },
                  icon: Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(.5),
                    ),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          MobileDrawerItem(
            text: 'Home',
            onTap: () {
              itemSelected(0);
            },
            selected: selectedIndex == 0,
          ),
          Sizes.h12,
          MobileDrawerItem(
            text: 'About Me',
            onTap: () {
              itemSelected(1);
            },
            selected: selectedIndex == 1,
          ),
          Sizes.h12,
          MobileDrawerItem(
            text: 'Services',
            onTap: () {
              itemSelected(2);
            },
            selected: selectedIndex == 2,
          ),
          Sizes.h12,
          MobileDrawerItem(
            text: 'Projects',
            onTap: () {
              itemSelected(3);
            },
            selected: selectedIndex == 3,
          ),
          Sizes.h12,
          MobileDrawerItem(
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
      ),
    );
  }
}
