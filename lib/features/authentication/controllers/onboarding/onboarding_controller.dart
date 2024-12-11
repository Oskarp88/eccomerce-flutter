import 'package:eccomerce_flutter/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  ///update current index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// jump to the specific dot selected page
  void dotNavigationClick(index){
     currentPageIndex.value = index;
     pageController.jumpTo(index);
  }

  /// update current index & jump to nex page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(()=> const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index & jump to the last page
  void skipPage(){
    // currentPageIndex.value = 2;
    //  pageController.jumpToPage(2);
    Get.to(()=> const LoginScreen());
  }
}