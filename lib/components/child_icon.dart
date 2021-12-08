import 'package:flutter/material.dart';

class childIcon extends StatelessWidget {
  IconData icon;
  Color color;
  double iconSize;

  childIcon(this.icon, this.color, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: iconSize,
    );
  }
}
