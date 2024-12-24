import 'package:eccomerce_flutter/features/shop/screens/product_datails/widgets/product_image_sider.dart';
import 'package:eccomerce_flutter/features/shop/screens/product_datails/widgets/product_meta_data.dart';
import 'package:eccomerce_flutter/features/shop/screens/product_datails/widgets/rating_and_share.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductoDetail extends StatelessWidget {
  const ProductoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product image slider
            ProductImageSlider(),
            /// product details
            Padding(
              padding: EdgeInsets.only(
                 right: Sizes.defaultSpace,
                 left: Sizes.defaultSpace,
                 bottom: Sizes.defaultSpace,
              ),
              child: Column(              
               children: [
                 ///rating & share....
                 RatingAndShare(),
                 ///price title stack brand
                 ProductMetaData(),
                 
               ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

