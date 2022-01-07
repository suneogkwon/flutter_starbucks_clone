import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 1:34
class LatestNoticeSlider extends StatelessWidget {
  const LatestNoticeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'What\'s New',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                    style: TextButton.styleFrom(padding: const EdgeInsets.all(0), minimumSize: const Size(0, 0)),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 245,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return InkWell(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/notice_thumbnail.png',
                            fit: BoxFit.cover,
                            scale: 0.5,
                          ),
                          const Text(
                            '1월 7일, 더북한강R 매장 오픈예정어어어엉',
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            '다양한 취향이 하나되는 곳, 더북한강R점을 소개합니다.',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
