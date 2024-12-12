
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()=> Get.back(), 
            icon: const Icon(CupertinoIcons.clear)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImage.sendEmailImage),
                width: THelperFuntions.screenWidth()*0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwSections,),
              Text(
                 'Password Reset Email Sent', 
                 style: Theme.of(context).textTheme.headlineMedium,
                 textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems,),
                Text(
                  'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBtwSections,),

                ///button
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: const Text('Done')
                ),
               ),
                const SizedBox(height: Sizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: ()=> Get.off(()=> const ResetPassword()),
                  child: const Text('Resend Email')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}