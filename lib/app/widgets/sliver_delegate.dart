import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class SliverDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget child;

  SliverDelegate({
    required this.height,
    required this.child,
  });

  @override
  double get minExtent => height;

  @override
  double get maxExtent => math.max(height, height);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    final max = height != oldDelegate.height;
    final min = height != oldDelegate.height;
    final c = child != oldDelegate.child;
    return max || min || c;
  }
}
