import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;

  const TCartCounterIcon({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
         onPressed: onPressed, 
         icon: Icon(
           Iconsax.shopping_bag,
           color: dark ? Colors.white : Colors.black,
         )
       ),
       Positioned(
         right: 0,
         child: Container(
           width: 18,
           height: 18,
           decoration: BoxDecoration(
             color: dark ? TColors.white.withOpacity(0.9) : TColors.black.withOpacity(0.5),
             borderRadius: BorderRadius.circular(100)
           ),
           child: Center(
             child: Text(
               '2', 
               style: Theme.of(context).textTheme.labelLarge!.apply(
                 color: dark ? TColors.black : TColors.white,
                 fontSizeFactor: 0.8
               ), 
             ),
           ),
         ),
       )
      ],
    );
  }
}

