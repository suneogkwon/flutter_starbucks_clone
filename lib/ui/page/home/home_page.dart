import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/page/home/module/latest_notice_slider.dart';
import 'package:starbucks_clone/ui/page/home/module/main_banner_card.dart';
import 'package:starbucks_clone/ui/page/home/module/notification_bar.dart';
import 'package:starbucks_clone/ui/page/home/module/popular_menu_slider.dart';
import 'package:starbucks_clone/ui/page/home/module/welcome_card.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:10
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          WelcomeCard(),
          NotificationBar(),
          MainBannerCard(),
          LatestNoticeSlider(),
          PopularMenuSlider(),
        ],
      ),
    );
  }
}
