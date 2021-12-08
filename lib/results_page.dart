import 'package:flutter/material.dart';

import 'bmi_theme.dart';
import 'constants.dart';
import 'main.dart';
import 'my_container.dart';

class ResultsPage extends StatelessWidget {
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
                    Text('Normal', style: kResultTextStyle),
                    Text(
                      '$calculatedBMI',
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'Your weight is within the normal range.',
                      style: BmiTheme.darkTextTheme.bodyText2,
                    ),
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
