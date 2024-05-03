import 'package:flutter/material.dart';

class CircularContainerWidget extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Color backgroundColor;
  final Widget? child;

  const CircularContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.backgroundColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
