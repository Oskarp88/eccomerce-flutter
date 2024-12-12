import 'package:eccomerce_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/cupertino.dart';

class CurvedEdgeWidget extends StatelessWidget {

  final Widget? child;

  const CurvedEdgeWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child
    );
  }
}

