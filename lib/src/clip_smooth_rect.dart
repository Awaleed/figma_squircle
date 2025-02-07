import 'package:flutter/widgets.dart';

import '../figma_squircle.dart';

class ClipSmoothRect extends StatelessWidget {
  const ClipSmoothRect({
    Key? key,
    required this.child,
    this.radius = SmoothBorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
  }) : super(key: key);

  final SmoothBorderRadius radius;
  final Clip clipBehavior;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath.shape(
      clipBehavior: clipBehavior,
      shape: SmoothRectangleBorder(
        borderRadius: radius,
      ),
      child: child,
    );
  }
}
