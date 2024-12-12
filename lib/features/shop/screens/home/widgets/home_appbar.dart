import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar( title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good day for shopping',
          style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),
        ),
         Text(
          'Oscar William',
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),
        ),
      ],
     ),
     showBackArrow: false,
     actions:  [
       TCartCounterIcon(iconColor: TColors.white, onPressed: (){},)
     ],
    );
  }
}

