
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/primary_headers_container.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/search_container.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:eccomerce_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_flutter/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:eccomerce_flutter/common/widgets/texts/section_headig.dart';
import 'package:eccomerce_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eccomerce_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:eccomerce_flutter/features/shop/screens/home/widgets/prome_slider.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CurvedEdgeWidget(
            child: PrimaryHeaderContainer(
              child: Column(
                children: [
                  ///appbar
                  THomeAppBar(),
                  SizedBox(height: Sizes.spaceBtwSections),
                  ///searchbar
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: Sizes.spaceBtwSections),
                  ///categories
                 Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      children: [
                        /// heading
                        SectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: Sizes.spaceBtwItems),
                        ///categories
                        HomeCategories()
                      ],
                    )
                  )
                ],
              ),
            ),
           ),

           ///Body 
           Padding(
             padding: const EdgeInsets.all(Sizes.defaultSpace),
             child: Column(
               children: [
                 ///Promo slider
                 const PromoSlider(
                  banners: [
                    TImage.bannersImage1,
                    TImage.bannersImage2,
                    TImage.bannersImage3,
                  ],
                 ),
                  ///Popular products
                 const SizedBox(height: Sizes.spaceBtwItems),
                 GridLayout(
                  itemBuilder: (_, index) => const ProductCardVertical(),
                  itemCount: 2,
                ),
                 
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}

