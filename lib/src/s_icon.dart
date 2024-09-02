import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'device_sizes.dart';

class SIcon extends StatelessWidget {
  const SIcon(
    this.iconData, {
    super.key,
    this.color,
    this.iconSize = 30,
    this.maxIconSize = 30,
  });

  final IconData iconData;
  final Color? color;
  final double iconSize;

  /// The highest size this Icon widget can have when
  /// the device size (width) is bigger than  [DeviceSizes.tablet] width.
  final double maxIconSize;

  /// Returns a scalable icon size using [ScreenUtil] package
  /// when the device width is less than [DeviceSizes.tablet] width and a
  /// fixed icon size when the device width
  /// is higher than [DeviceSizes.tablet].
  double _getIconSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= DeviceSizes.tablet.width
          ? (iconSize
              .sp) // Icon size is scalable from Tablet device size and below.
          : maxIconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: _getIconSize(context),
      color: color,
    );
  }
}
