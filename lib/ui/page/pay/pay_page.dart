import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/widget/layout/padded_container.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 4:00
class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            collapsedHeight: 45.0,
            toolbarHeight: 35.0,
            expandedHeight: 100.0,
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              title: Text(
                'Pay',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: PaddedContainer(
              child: Card(
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.5 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.add_circle_outline_rounded,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: const Text(
                          '스타벅스 카드를 등록해보세요.',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 130),
                        child: const Text(
                          '매장과 사이렌오더에서 쉽고 편리하게\n사용할 수 있고, 별도 적립할 수 있습니다.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: const Placeholder(fallbackHeight: 80, strokeWidth: 1),
            ),
          )
        ],
      ),
    );
  }
}
