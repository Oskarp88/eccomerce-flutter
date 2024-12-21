import 'package:eccomerce_flutter/common/widgets/images/circular_image.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OUserProfileTilte extends StatelessWidget {
  const OUserProfileTilte({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const CircularImage(
       image: TImage.userImagen,
       height: 50, 
       width: 50,
       padding: 0,
     ),
     title: Text(
       'Oscar burgos',
       style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),
     ),
     subtitle: Text(
       'burgos@gmail.com',
       style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)
     ),
     trailing: IconButton(
       onPressed: (){}, 
       icon: const Icon(Iconsax.edit, color: TColors.white,)
     ),
    );
  }
}