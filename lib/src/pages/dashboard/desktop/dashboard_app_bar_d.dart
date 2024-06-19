import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gautham_protfolio_new/src/pages/dashboard/desktop/desktop_app_bar_item_d.dart';
import 'package:gautham_protfolio_new/src/utilities/constants.dart';
import 'package:gautham_protfolio_new/src/utilities/extensions.dart';
import 'package:gautham_protfolio_new/src/utilities/sizes.dart';
import 'package:gautham_protfolio_new/src/utilities/themes.dart';

class DashboardAppBarDesktop extends StatelessWidget {
  const DashboardAppBarDesktop({
    super.key,
    required this.height,
    required this.itemSelected,
    required this.selectedIndex,
  });

  final double height;
  final Function(int index) itemSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: height,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              FittedBox(
                child: SelectableText(
                  'Gautham',
                  style: context.hl.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DesktopAppBarItem(
                      text: 'Home',
                      constraints: constraints,
                      onTap: () {
                        itemSelected(0);
                      },
                      selected: selectedIndex == 0,
                    ),
                    Sizes.w12,
                    DesktopAppBarItem(
                      text: 'About Me',
                      constraints: constraints,
                      onTap: () {
                        itemSelected(1);
                      },
                      selected: selectedIndex == 1,
                    ),
                    Sizes.w12,
                    DesktopAppBarItem(
                      text: 'Services',
                      constraints: constraints,
                      onTap: () {
                        itemSelected(2);
                      },
                      selected: selectedIndex == 2,
                    ),
                    Sizes.w12,
                    DesktopAppBarItem(
                      text: 'Projects',
                      constraints: constraints,
                      onTap: () {
                        itemSelected(3);
                      },
                      selected: selectedIndex == 3,
                    ),
                    Sizes.w12,
                    DesktopAppBarItem(
                      text: 'Contact',
                      constraints: constraints,
                      onTap: () {
                        itemSelected(4);
                      },
                      selected: selectedIndex == 4,
                    ),
                    Sizes.w12,
                    SizedBox(
                      width: constraints.maxWidth * 0.12,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Download CV',
                          style: context.tm.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: constraints.maxHeight * 0.32),
                        ),
                      ),
                    ),
                    Sizes.w12,
                    Consumer(
                      builder: (context, ref, child) {
                        var theme = ref.watch(themeMode);

                        return IconButton(
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
                                  )
                                : Icon(
                                    Icons.light_mode_outlined,
                                    key: UniqueKey(),
                                  ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
