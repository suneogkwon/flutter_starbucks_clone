import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/values.dart';
import 'package:starbucks_clone/ui/widget/layout/padded_container.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오전 11:24
class WelcomeCard extends StatelessWidget {
  const WelcomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
      toolbarHeight: 330,
      backgroundColor: Colors.white,
      flexibleSpace: PaddedContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0),
            Container(
              padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
              child: const Text(
                '안녕하세요.\n스타벅스입니다.',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 5, 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: const Text('스타벅스 리워드 회원\n신규가입 첫 구매 시,\n무료음료 혜택을 드려요!'),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () => null,
                                child: const Text(
                                  '회원가입',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    backgroundColor: Values.primaryColor,
                                    padding: const EdgeInsets.all(0),
                                    minimumSize: const Size(85.0, 28.0)),
                              ),
                              const SizedBox(width: 10),
                              TextButton(
                                onPressed: () => null,
                                child: const Text(
                                  '로그인',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(color: Values.primaryColor),
                                        borderRadius: BorderRadius.circular(20)),
                                    padding: const EdgeInsets.all(0),
                                    minimumSize: const Size(65.0, 28.0)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/welcome_card_cup.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
