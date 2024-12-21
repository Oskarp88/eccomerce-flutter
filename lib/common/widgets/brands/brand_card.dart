import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:eccomerce_flutter/common/widgets/images/circular_image.dart';
import 'package:eccomerce_flutter/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/enums.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(Sizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///icon
            Flexible(
              child: CircularImage(
                fit: BoxFit.contain,
                isNetworkImage: false,
                image: TImage.clothIcon,
                backgroundColor: Colors.transparent,
                overLayColor: THelperFuntions.isDarkMode(context) ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems/2,),
                                
            ///text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large,),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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

