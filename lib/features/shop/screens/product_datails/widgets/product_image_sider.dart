import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:eccomerce_flutter/common/widgets/icons/circular_icons.dart';
import 'package:eccomerce_flutter/common/widgets/images/rounded_image.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            ///main image large
             const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Sizes.productImageRadius * 2),
                child: Image(
                  image: AssetImage(TImage.zapatosProductImage)),
              )
             ),
             /// image slider
              Positioned(
                right: 0,
                bottom: 30,
                left: Sizes.defaultSpace,
               child: SizedBox(
                 height: 80,
                 child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: Sizes.spaceBtwItems,), 
                  itemBuilder: (_, index) =>  RoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    imagenUrl: TImage.zapatosImage,
                    border: Border.all(color: TColors.primaryColor),
                    padding: const EdgeInsets.all(Sizes.sm),
                  ), 
                 ),
               ),
             ),
             ///appbar icons
             const TAppBar(
              showBackArrow: true,
              actions: [CircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
             )
          ],
        ),
      ),
    );
  }
}