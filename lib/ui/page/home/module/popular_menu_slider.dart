import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/values.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 2:50
class PopularMenuSlider extends StatelessWidget {
  const PopularMenuSlider({Key? key}) : super(key: key);

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
                children: const [
                  Expanded(
                    child: Text(
                      '이 시간대 인기 메뉴',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    '주중 오후 6시 기준',
                    style: TextStyle(fontSize: 11.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 180,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/ice_americano.png'),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '1',
                                style: TextStyle(color: Values.primaryColor, fontSize: 18.0),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: const Text(
                                    '아이스 아메리카노',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
