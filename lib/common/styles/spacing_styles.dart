import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: Sizes.appBarheight,
      left: Sizes.defaultSpace,
      bottom: Sizes.defaultSpace,
      right: Sizes.defaultSpace,
  );
}