import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 6:56
class PayTitleBar extends StatelessWidget {
  const PayTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      collapsedHeight: 45.0,
      toolbarHeight: 35.0,
      expandedHeight: 100.0,
      backgroundColor: Colors.white,
      elevation: 1,
      flexibleSpace: _flexibleSpaceBar(),
    );
  }

  Widget _flexibleSpaceBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const FlexibleSpaceBar(
          titlePadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          title: Text(
            'Pay',
            style: TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }
}
