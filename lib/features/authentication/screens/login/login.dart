import 'package:eccomerce_flutter/common/styles/spacing_styles.dart';
import 'package:eccomerce_flutter/common/widgets_login_signup/form_divider.dart';
import 'package:eccomerce_flutter/common/widgets_login_signup/social_buttons.dart';
import 'package:eccomerce_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:eccomerce_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child:  Column(
            children: [
              ///logo, title $ Sub-title
               LoginHaeder(),
              ///form
               LoginForm(),
              ///divider
               FormDivider(dividetText: 'Or sign in with',),
               SizedBox(height: Sizes.spaceBtwSections),
              ///Footer
               SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



