import 'package:eccomerce_flutter/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return VerticalImageText(
            image: TImage.zapatosImage, 
            title: 'Shoes',
            onTap: (){},
          );
        },
      ),
    );
  }
}

