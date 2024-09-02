import 'package:flutter/widgets.dart';
import 'device_sizes.dart';

class SContainer extends StatelessWidget {
  const SContainer({
    super.key,
    required this.child,
    this.padding,
    this.maxWidth = 1240.0,
  });

  /// A widget that is constrained by [SContainer].
  final Widget child;

  final double maxWidth;

  final EdgeInsetsGeometry? padding;

  double _getPadding(BuildContext context) =>
      (MediaQuery.sizeOf(context).width <= DeviceSizes.mobile.width) ? 20 : 40;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding == null
            ? EdgeInsets.symmetric(
                horizontal: _getPadding(context),
              )
            : padding!,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: child,
        ),
      ),
    );
  }
}
