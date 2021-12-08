import 'package:flutter/material.dart';

import '../bmi_theme.dart';
import 'constants.dart';
import '../results_page.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function tapFunction;
  const BottomButton({this.buttonTitle, this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: double.infinity,
      height: kBottomContainerHeight,
      decoration: BoxDecoration(
        color: Color(0xFFEB1555),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: InkWell(
          child: Text(
            buttonTitle,
            style: BmiTheme.darkTextTheme.bodyText1,
          ),
          onTap: tapFunction,
        ),
      ),
    );
  }
}
