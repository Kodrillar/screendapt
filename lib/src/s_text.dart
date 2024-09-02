import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'device_sizes.dart';

class SText extends StatelessWidget {
  const SText(
    this.text, {
    super.key,
    this.textWrap,
    this.style,
    this.maxFontSize = 20,
    this.maxLines,
    this.textAlign,
    this.textDirection,
  });

  final String text;

  /// The highest size this Text widget can have when
  /// the device size (width) is bigger than  [DeviceSizes.tablet] width.
  /// The default [maxFontSize] is 20;
  final double maxFontSize;

  final bool? textWrap;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final int? maxLines;

  final double _defaultFontSize = 15;

  /// Returns a scalable font size using [ScreenUtil] package
  /// when the device width is less than [DeviceSizes.tablet] width and a
  /// fixed font size ([maxFontSize]) when the device width
  /// is higher than [DeviceSizes.tablet].
  double _getFontSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= DeviceSizes.tablet.width
          ? (style?.fontSize ?? _defaultFontSize)
              .sp // Font size is scalable from Tablet device size and below
          : maxFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: textWrap,
      maxLines: maxLines,
      style: style?.copyWith(
            fontSize: _getFontSize(context),
          ) ??
          TextStyle(fontSize: _getFontSize(context)),
    );
  }
}
