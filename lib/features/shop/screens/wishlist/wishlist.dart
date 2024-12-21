import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/icons/circular_icons.dart';
import 'package:eccomerce_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_flutter/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:eccomerce_flutter/features/shop/screens/home/home.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 4, 
                itemBuilder: (_, index) => const ProductCardVertical()
              )
            ],
          ),
        ),
      ),
    );
  }
}