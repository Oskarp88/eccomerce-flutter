import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:eccomerce_flutter/common/widgets/images/circular_image.dart';
import 'package:eccomerce_flutter/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:eccomerce_flutter/common/widgets/texts/product_price_text.dart';
import 'package:eccomerce_flutter/common/widgets/texts/product_title_text.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/enums.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price and sale
        Row(
          children: [
            ///sale tag
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            const ProductPriceText(price: '170', isLarge: true),
          ],
        ),
        ////Title
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),
        const ProductTitleText(title: 'White Nike Sport Shirt'),
        ////Stack status
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),
        ///brand
         Row(
          children: [
            CircularImage(
              image: TImage.clothIcon,
              width:32,
              height: 32,
              overLayColor: dark ? TColors.white : TColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}