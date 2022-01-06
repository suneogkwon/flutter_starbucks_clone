import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/theme/app_theme.dart';
import 'package:starbucks_clone/ui/widget/layout/bottom_navigation_bar.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:11
class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: mainColor,
            ),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
