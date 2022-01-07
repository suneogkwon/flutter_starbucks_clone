import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/page/home/home_page.dart';
import 'package:starbucks_clone/ui/page/pay/pay_page.dart';
import 'package:starbucks_clone/ui/widget/layout/bottom_navigation_bar.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:11
class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const HomePage(),
            const PayPage(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
