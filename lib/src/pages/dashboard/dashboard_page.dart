import 'package:flutter/material.dart';
import 'package:gautham_protfolio_new/src/pages/home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          HomePage()
        ],
      ),
    );
  }
}
