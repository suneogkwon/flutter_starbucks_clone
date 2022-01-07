import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오전 11:29

class NotificationBar extends StatelessWidget {
  const NotificationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: NotificationBarDelegate(),
      pinned: true,
    );
  }
}

class NotificationBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shrinkOffset > 0 ? [const BoxShadow(color: Colors.black38, blurRadius: 1)] : null,
      ),
      child: Row(
        children: [
          Container(padding: const EdgeInsets.only(right: 8.0), child: const Icon(Icons.mail_outline_rounded)),
          const Expanded(child: Text('What\'s New')),
          const Icon(Icons.notifications_none_rounded)
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
