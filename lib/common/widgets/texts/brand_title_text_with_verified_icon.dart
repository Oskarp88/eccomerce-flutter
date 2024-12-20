import 'package:eccomerce_flutter/common/widgets/texts/brand_title_text.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/enums.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiedIcon({
    super.key, 
    required this.title, 
    this.maxLines = 1, 
    this.textColor, 
    this.iconColor = TColors.primaryColor, 
    this.textAlign = TextAlign.center, 
    this.brandTextSizes = TextSizes.small
  });
  
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            branTextSizes: brandTextSizes,
          )
        ),
        const SizedBox(height: Sizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: Sizes.iconXs)
      ],
    );
  }
}