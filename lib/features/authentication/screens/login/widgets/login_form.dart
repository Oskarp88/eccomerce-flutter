import 'package:eccomerce_flutter/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:eccomerce_flutter/features/authentication/screens/signup/signup.dart';
import 'package:eccomerce_flutter/navigation_menu.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwInputFields,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwInputFields/2),
            /// remenber me & forget password 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remenber me
                 Row(
                  children: [
                    Checkbox(
                      value: true, 
                      onChanged: (value){}
                    ),
                    const Text('Remember me')
                  ],
                 ),
                 //forgot
                 TextButton(
                  onPressed: ()=> Get.to(() => const ForgotPassword()), 
                  child: const Text('Forgot password')
                 ),
              ],
            ),
            const SizedBox(height: Sizes.spaceBtwSections,),
        
            ///Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(() => const NavigationMenu()), 
                child: const Text('Sing In')
              ),
            ),
            ///Create In Button
            const SizedBox(height: Sizes.spaceBtwInputFields,),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()), 
                child: const Text('Create Account')
              ),
            ),
          ],
        ),
      )
    );
  }
}