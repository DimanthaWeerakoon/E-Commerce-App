import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/widgets.dart';


class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECuverdEdgeWidget(
      child: Container(
          color: EColors.primary,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 400,
            child: Stack(
              children: [
                Positioned(
                    top: -150,
                    right: -250,
                    child: ECircularContainer(
                      backgroundColor: EColors.white.withOpacity(0.1),
                    )),
                Positioned(
                    top: 100,
                    right: -300,
                    child: ECircularContainer(
                      backgroundColor: EColors.white.withOpacity(0.1),
                    )),
                child,
              ],
            ),
          )),
    );
  }
}
