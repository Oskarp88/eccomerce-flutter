import 'package:eccomerce_flutter/common/styles/shadow_style.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:eccomerce_flutter/common/widgets/icons/circular_icons.dart';
import 'package:eccomerce_flutter/common/widgets/images/rounded_image.dart';
import 'package:eccomerce_flutter/common/widgets/texts/product_price_text.dart';
import 'package:eccomerce_flutter/common/widgets/texts/product_title_text.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
      final dark = THelperFuntions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
         width: 180,
         padding: const EdgeInsets.all(1),
         decoration: BoxDecoration(
          boxShadow: [OShadowStyle.verticalProductSpace],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
         ),
         child: Column(
          children: [
            /// thumbail, wishlist 
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// image
                  const RoundedImage(
                    imagenUrl: TImage.zapatosProductImage, 
                    applyImagenRadius: true,
                  ),
                  ///--sake tag
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: Sizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
                      ),
                    ),
                  ),
                  ///favorite icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems/2,),
            /// --- datails
            Padding(
              padding: const EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(title: 'White nike Air Shoes', smallSize: true,),
                  const SizedBox(height: Sizes.spaceBtwItems/2,),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: Sizes.xs),
                      const Icon(Iconsax.verify5, color: TColors.primaryColor, size: Sizes.iconXs)
                    ]
                  ),
                   
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ProductPriceText( price: '35.0'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Sizes.cardRadiusMd),
                            bottomRight: Radius.circular(Sizes.productImageRadius)
                          )
                        ),
                        child: const SizedBox(
                          width: Sizes.iconLg * 1.2,
                          height: Sizes.iconLg *1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white,))
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
         ),
      ),
    );
  }
}
