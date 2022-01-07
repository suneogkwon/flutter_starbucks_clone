import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/page/pay/module/add_card.dart';
import 'package:starbucks_clone/ui/page/pay/module/pay_title_bar.dart';

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
          const PayTitleBar(),
          const AddCreditCard(),
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
