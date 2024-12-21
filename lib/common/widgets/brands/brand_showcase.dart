import 'package:eccomerce_flutter/common/widgets/brands/brand_card.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class OBrandShowcase extends StatelessWidget {
  const OBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(Sizes.md),
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [
          ///brand with products count
          const BrandCard(showBorder: false),
          const SizedBox(height: Sizes.spaceBtwItems),
          ///brand top 3 image product
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: THelperFuntions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: Sizes.sm),
      padding: const EdgeInsets.only(right: Sizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}