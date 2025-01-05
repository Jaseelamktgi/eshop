import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimayHeader extends StatelessWidget {
  const PrimayHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(children: [
          // Background custom shapes
          Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: AppColors.textWhite.withValues(alpha: 0.1),
              )),
          Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: AppColors.textWhite.withValues(alpha: 0.1),
              )),
          child,
        ]),
      ),
    );
  }
}
