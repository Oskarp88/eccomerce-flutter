import 'package:eccomerce_flutter/features/authentication/screens/onboarding/widgets/onboardind_skip.dart';
import 'package:eccomerce_flutter/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:eccomerce_flutter/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:eccomerce_flutter/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
           children: const [
              OnboardindPage(
                image: TImage.onboardingImageSearching,
                title: TText.onboarddingTitle1,
                subTitle: TText.onboarddingSubTitle1,
              ),
               OnboardindPage(
                image: TImage.onboardingImageShopping,
                title: TText.onboarddingTitle2,
                subTitle: TText.onboarddingSubTitle2,
              ),
               OnboardindPage(
                image: TImage.onboardingImageDelivery,
                title: TText.onboarddingTitle3,
                subTitle: TText.onboarddingSubTitle3,
              ),
           ],
          ),
          ///Skip Button
          const OnBoardingSkip(),
          ///dot navigator
          const OnBoardingDotNavigation(),
          ///circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

