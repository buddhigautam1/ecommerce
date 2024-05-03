import 'package:flutter/material.dart';


class CircleButton extends StatelessWidget {
  final double iconSize;
  final Function onPressed;
  final Icon icon;
  final Color iconColor;

  // Constructor
  const CircleButton({
    Key? key,
    required this.iconColor,
    required this.iconSize,
    required this.onPressed,
    required this.icon, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration:  BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed(),
        icon: icon,
        iconSize: iconSize,
        color: iconColor,
      ),
    );
  }
}