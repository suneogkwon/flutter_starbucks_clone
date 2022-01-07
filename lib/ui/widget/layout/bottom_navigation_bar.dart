import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:28
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 0.1)],
        color: Colors.white,
      ),
      child: TabBar(
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        labelColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        labelStyle: const TextStyle(fontSize: 12.0),
        tabs: [
          _tab(Icons.home_rounded, 'Home'),
          _tab(Icons.credit_card_rounded, 'Pay'),
          _tab(Icons.coffee_rounded, 'Order'),
          _tab(Icons.card_giftcard_rounded, 'Gift'),
          _tab(Icons.more_horiz_rounded, 'Other'),
        ],
      ),
    );
  }

  Widget _tab(IconData icon, String label) => Tab(
        height: 60.0,
        iconMargin: const EdgeInsets.all(0.0),
        icon: Icon(icon, size: 30.0),
        text: label,
      );
}
