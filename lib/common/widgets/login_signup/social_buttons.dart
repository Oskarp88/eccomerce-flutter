
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: Sizes.iconMd,
              height: Sizes.iconMd,
              image: AssetImage(TImage.google),
            ),
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
         Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: Sizes.iconMd,
              height: Sizes.iconMd,
              image: AssetImage(TImage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}