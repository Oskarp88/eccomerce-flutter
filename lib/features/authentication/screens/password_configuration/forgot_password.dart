import 'package:eccomerce_flutter/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(
              'Forgot Password',
               style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            Text(
              'ooooooooooo',
              style: Theme.of(context).textTheme.labelMedium
            ),
            const SizedBox(height: Sizes.spaceBtwSections * 2),
            ///text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon:  Icon(Iconsax.direct_right) 
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            ///Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.off(()=> const ResetPassword()),
                child: const Text('Submit')
              ),
            ),
          ],
        ),
      ),
    );
  }
}