import 'package:eccomerce_flutter/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.primaryColor,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              )
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              )
            ),  
            child,              
         ],
        ),
      ),
    );
  }
}

