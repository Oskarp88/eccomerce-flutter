import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class OnboardindPage extends StatelessWidget {
  final String image, title, subTitle;
  const OnboardindPage({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFuntions.screenWidth() * 0.8,
            height: THelperFuntions.screenHeight() * 0.6,
            image:  AssetImage(image)
          ),
          Text(
            title, 
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Sizes.spaceBtwItems,),
          Text(
            subTitle, 
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
            
        ],
      )
                
   );
  }
}