import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class childIcon extends StatelessWidget {
  IconData icon;
  Color color;
  double iconSize;

  childIcon(this.icon, this.color, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: iconSize,
    );
  }
}
