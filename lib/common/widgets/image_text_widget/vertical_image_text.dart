import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  
  const VerticalImageText({
    super.key, 
    required this.image, 
    required this.title, 
    this.textColor = Colors.white, 
    this.backgroundColor = Colors.white, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
             ///Circular Icon
             Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (THelperFuntions.isDarkMode(context) ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
             ),
             ///text
             const SizedBox(height: Sizes.spaceBtwItems / 2), 
             SizedBox(
              width: 55,
               child: Text(
                 title,
                 style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
               ),
             )
          ],
        ),
      ),
    );
  }
}

