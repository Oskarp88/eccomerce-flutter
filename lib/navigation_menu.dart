import 'package:eccomerce_flutter/features/shop/screens/home/home.dart';
import 'package:eccomerce_flutter/features/shop/screens/store/store.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFuntions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
           NavigationDestination(
            icon: Icon(Iconsax.home), 
            label: 'Home'
           ),
           NavigationDestination(
            icon: Icon(Iconsax.shop), 
            label: 'Store'
           ),
           NavigationDestination(
            icon: Icon(Iconsax.heart), 
            label: 'Wishlist'
           ),
           NavigationDestination(
            icon: Icon(Iconsax.user), 
            label: 'Profile'
           )         
          ]
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
     Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}