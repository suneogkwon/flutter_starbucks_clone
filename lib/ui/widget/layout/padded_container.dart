import 'package:flutter/cupertino.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-07
/// Time: 오후 1:38
class PaddedContainer extends StatelessWidget {
  const PaddedContainer({Key? key, this.child}) : super(key: key);

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: child,
    );
  }
}
