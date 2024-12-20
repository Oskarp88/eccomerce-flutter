
import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/search_container.dart';
import 'package:eccomerce_flutter/common/widgets/images/circular_image.dart';
import 'package:eccomerce_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_flutter/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:eccomerce_flutter/common/widgets/texts/section_headig.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/enums.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFuntions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: Sizes.spaceBtwItems,),
                    const SearchContainer(
                      text: 'Search in Store',
                      showBackground: false,
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: Sizes.spaceBtwSections,),
                    
                    /// features brands
                    SectionHeading(title: 'Features Brands', onPressed: (){},),
                    const SizedBox(height: Sizes.spaceBtwItems,),
                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80, 
                      itemBuilder: (_, index){
                        return GestureDetector(
                          onTap: (){},
                          child: RoundedContainer(
                        padding: const EdgeInsets.all(Sizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ///icon
                            Flexible(
                              child: CircularImage(
                                fit: BoxFit.contain,
                                isNetworkImage: false,
                                image: TImage.clothIcon,
                                backgroundColor: Colors.transparent,
                                overLayColor: THelperFuntions.isDarkMode(context) ? TColors.white : TColors.black,
                              ),
                            ),
                            const SizedBox(width: Sizes.spaceBtwItems/2,),
                      
                            ///text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large,),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                         );
                      }
                    )
                     
                  ],
                )
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}

