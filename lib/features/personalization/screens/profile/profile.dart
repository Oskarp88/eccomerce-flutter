import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/images/circular_image.dart';
import 'package:eccomerce_flutter/common/widgets/texts/section_headig.dart';
import 'package:eccomerce_flutter/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:eccomerce_flutter/utils/constants/sizes.dart';
import 'package:eccomerce_flutter/utils/constants/string_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                   children: [
                      const CircularImage(
                        image: TImage.userImagen,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                        onPressed: (){}, 
                        child: const Text('Change Profile Picture')
                      )
                   ],
                ),
              ),
              ////details
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              ProfileMenu(
                onPressed: (){},
                title: 'Name',
                value: 'Oscar William',
              ),
               ProfileMenu(
                onPressed: (){},
                title: 'Username',
                value: 'Oskarp88',
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),
              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              ProfileMenu(
                onPressed: (){},
                title: 'User ID',
                value: '12837474',
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                onPressed: (){},
                title: 'E-mail',
                value: 'burgos@gmail.com',
              ),
              ProfileMenu(
                onPressed: (){},
                title: 'Phone number',
                value: '319.........',
              ),
              ProfileMenu(
                onPressed: (){},
                title: 'Gender',
                value: 'Male',
              ),
              ProfileMenu(
                onPressed: (){},
                title: 'Date of Birth',
                value: '21 agosto 1990',
              ),
              const SizedBox(height: Sizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

