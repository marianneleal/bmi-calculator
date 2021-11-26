import 'package:bmi_calculator/child_icon.dart';
import 'package:flutter/material.dart';

import 'bmi_theme.dart';

class containerChild extends StatelessWidget {
  final childIcon icon;
  final String childText;

  containerChild(this.icon, this.childText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 10,
        ),
        Text(
          childText,
          style: BmiTheme.darkTextTheme.bodyText2,
        ),
      ],
    );
  }
}
