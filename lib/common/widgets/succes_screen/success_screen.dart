import 'package:eccomerce_flutter/common/styles/spacing_styles.dart';
import 'package:eccomerce_flutter/features/authentication/screens/login/login.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, sutTitle;
  final VoidCallback onPressed;
  const SuccessScreen({super.key,
    required this.image,
    required this.sutTitle,
    required this.title,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFuntions.screenWidth()*0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwSections,),
              Text(
                 title, 
                 style: Theme.of(context).textTheme.headlineMedium,
                 textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems,),
                Text(
                  sutTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBtwSections,),

                ///button
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed, 
                  child: const Text('Continue')
                ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}