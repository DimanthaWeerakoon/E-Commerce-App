import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class ECuverdEdgeWidget extends StatelessWidget {
  const ECuverdEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: child,
    );
  }
}
