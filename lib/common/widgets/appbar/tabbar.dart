import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/device/device_utility.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class OTabBar extends StatelessWidget implements PreferredSizeWidget {
  const OTabBar({
    super.key,      
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: dark ? TColors.white : TColors.primaryColor,
        
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}