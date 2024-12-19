import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:eccomerce_flutter/common/widgets/images/rounded_image.dart';
import 'package:eccomerce_flutter/features/shop/controllers/home_controller.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  final List<String> banners;
  const PromoSlider({
    super.key, required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
         options: CarouselOptions(
           viewportFraction: 1,
           onPageChanged: (index,_)=>controller.updatePageIndicator(index)
         ),
          items: banners.map((url) => RoundedImage(imagenUrl: url)).toList(),

        ),
        const SizedBox(height: Sizes.spaceBtwItems),
         Center(
           child: Obx(
             ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               for(int i = 0; i < banners.length; i++)
                 CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primaryColor : TColors.grey,         
                ),
                                    
              ],
            ),
           ),
         )
      ],
    );
  }
}

