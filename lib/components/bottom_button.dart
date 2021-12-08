import 'package:flutter/material.dart';

import '../bmi_theme.dart';
import 'constants.dart';
import '../results_page.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  const BottomButton({this.buttonTitle});

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
            'calculate',
            style: BmiTheme.darkTextTheme.bodyText1,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ResultsPage();
              }),
            );
          },
        ),
      ),
    );
  }
}
