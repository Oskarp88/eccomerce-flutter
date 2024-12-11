import 'package:eccomerce_flutter/features/authentication/screens/signup/verify_email.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  prefix: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: Sizes.inputFieldFieds),
             Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  prefix: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Sizes.inputFieldFieds),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: 'Username',
            prefix: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: Sizes.inputFieldFieds),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: 'Email',
            prefix: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: Sizes.inputFieldFieds),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            prefix: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: Sizes.inputFieldFieds),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash)
          ),
        ),
        const SizedBox(height: Sizes.inputFieldFieds),
        //Terms&conditions Checkbox
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: true, 
                onChanged: (value){}
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Agree to ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'privacyPolicy ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primaryColor,
                )),
                TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'terms of use', style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primaryColor,
                )),
              ]
            ))
    
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwSections),
        //sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: ()=>Get.to(()=> const VerifyEmailScreen()), 
            child: const Text('Create Account')
          ),
        )
      ],
    ));
  }
}