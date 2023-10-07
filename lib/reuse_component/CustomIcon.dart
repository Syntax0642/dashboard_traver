import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color color;

  CustomIcons({
    required this.iconData,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: color,
    );
  }
}