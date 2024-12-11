import 'package:eccomerce_flutter/common/widgets_login_signup/form_divider.dart';
import 'package:eccomerce_flutter/common/widgets_login_signup/social_buttons.dart';
import 'package:eccomerce_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text('Let´s create your account', style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: Sizes.spaceBtwSections,),
              //form
              const SignUpForm(),
              //divider
              const SizedBox(height: Sizes.spaceBtwSections,),
              const FormDivider(dividetText: 'or sign up with'),
              const SizedBox(height: Sizes.spaceBtwSections,),
              //special button
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

