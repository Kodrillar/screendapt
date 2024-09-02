enum DeviceSizes {
  mobile(600),

  /// Device width greater than '660' is regarded as 'Desktop'
  tablet(660);

  const DeviceSizes(this.width);

  final double width;
}
