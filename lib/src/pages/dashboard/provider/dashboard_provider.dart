import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider =
    ChangeNotifierProvider<DashboardProvider>((ref) => DashboardProvider(ref));

class DashboardProvider extends ChangeNotifier {
  final Ref ref;

  DashboardProvider(this.ref);

  final PageController pageController = PageController();

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  onItemSelected(index) {

    if (index == _selectedIndex) {
      return;
    }

    /// TEMP
    if (index > 3) {
      return;
    }

    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
