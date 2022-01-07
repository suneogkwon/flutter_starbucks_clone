import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 1:03
class MainBannerCard extends StatelessWidget {
  const MainBannerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color: Colors.cyan,
          elevation: 5,
          child: Container(
            height: 350,
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    '2022 새해엔 행운이 가득한\n스타벅스에서!',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                const Text(
                  '2022.1.1 - 2022.2.3',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
