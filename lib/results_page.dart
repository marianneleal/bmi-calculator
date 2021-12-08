import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';

import 'bmi_theme.dart';
import 'components/constants.dart';
import 'main.dart';
import 'components/my_container.dart';

class ResultsPage extends StatelessWidget {
  final bmiResult;
  final String judgement;

  ResultsPage({this.bmiResult, this.judgement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'your bmi result',
          style: BmiTheme.darkTextTheme.headline1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: myContainer(
                color: Color(0xFF0c3d12),
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(judgement.toUpperCase(), style: kResultTextStyle),
                    Text(
                      '$bmiResult',
                      style: kNumberTextStyle,
                    ),
                    BottomButton(
                        buttonTitle: 'recalculate',
                        tapFunction: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
