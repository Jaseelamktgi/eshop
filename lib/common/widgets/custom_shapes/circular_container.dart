import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {

  const CircularContainer({super.key,
  this.height = 400,
  this.width = 400,
  this.borderRadius = 400,
  this.backgroundColor = Colors.white,
  this.padding ,
  this.child, this.margin,
  });

  final double? height;
  final double? width;
  final double borderRadius;
  final Color backgroundColor;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding:padding ,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}