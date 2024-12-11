import 'package:eccomerce_flutter/common/widgets/succes_screen/success_screen.dart';
import 'package:eccomerce_flutter/features/authentication/screens/login/login.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()), 
            icon: const Icon(CupertinoIcons.clear)
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
               //image
               Image(
                image: const AssetImage(TImage.verifyEmailImage),
                width: THelperFuntions.screenWidth()*0.6,
               ),
               const SizedBox(height: Sizes.spaceBtwSections),
               //title & subtitle
               Text(
                'Verify your email address!', 
                 style: Theme.of(context).textTheme.headlineMedium,
                 textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBtwItems),
                Text(
                'oscar@gmail.com', 
                 style: Theme.of(context).textTheme.labelLarge,
                 textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBtwItems),
                Text(
                'Congratulations your account awaits verify your email', 
                 style: Theme.of(context).textTheme.labelMedium,
                 textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBtwSections),

               ///button
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                    title: 'Your account successfully created',
                    sutTitle: 'welcome to your ultimate shopping destination your account is created',
                    image: TImage.successImage,
                    onPressed: () => Get.to(() => const LoginScreen())
                  ), ),
                  child: const Text('Continue'),
                ),
               ),
              const SizedBox(height: Sizes.spaceBtwItems),
               SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text('Resend Email')
                ),
               ),
            ],
          )
        ),
      ),
    );
  }
}