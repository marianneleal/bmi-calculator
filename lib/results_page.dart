import 'package:flutter/material.dart';

import 'bmi_theme.dart';

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
    );
  }
}
