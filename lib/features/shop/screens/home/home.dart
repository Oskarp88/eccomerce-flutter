import 'dart:io';

import 'package:eccomerce_flutter/app.dart';
import 'package:eccomerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/primary_headers_container.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:eccomerce_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:eccomerce_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(
            child: PrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                ],
              ),
            ),
           )
          ],
        ),
      ),
    );
  }
}

