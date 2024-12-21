import 'package:eccomerce_flutter/common/widgets/brands/brand_showcase.dart';
import 'package:eccomerce_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_flutter/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:eccomerce_flutter/common/widgets/texts/section_headig.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';

class OCategoryTab extends StatelessWidget {
  const OCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            ///brands
            const OBrandShowcase(images: [TImage.zapatosImage, TImage.zapatosProductImage],),
            const OBrandShowcase(images: [TImage.zapatosImage, TImage.zapatosProductImage],),

            const SizedBox(height: Sizes.spaceBtwItems,),
      
            /// Products
            SectionHeading(
              title: 'you night like',
              onPressed: (){},
            ),
            const SizedBox(height: Sizes.spaceBtwItems,),
      
            GridLayout(
              itemCount: 4, 
              itemBuilder: (_, index) => const ProductCardVertical()
            ),
          ],
        ),
      ),
      ]
    );
  }
}

