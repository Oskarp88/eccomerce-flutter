
import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFuntions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}