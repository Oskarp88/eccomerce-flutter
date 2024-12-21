
import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/appbar/tabbar.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/search_container.dart';
import 'package:eccomerce_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_flutter/common/widgets/brands/brand_card.dart';
import 'package:eccomerce_flutter/common/widgets/texts/section_headig.dart';
import 'package:eccomerce_flutter/features/shop/screens/store/widget/category_tab.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                          return const BrandCard(showBorder: true,);
                        }
                      )
                       
                    ],
                  ),
                ),
      
                bottom: const OTabBar(
                 tabs: [
                    Tab(child: Text('Sport')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              OCategoryTab(),
              OCategoryTab(),
              OCategoryTab(),
              OCategoryTab(),
              OCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

