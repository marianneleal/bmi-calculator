import 'dart:ui';
import 'package:bmi_calculator/container_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'bmi_theme.dart';
import 'child_icon.dart';
import 'my_container.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());
enum Gender { male, female }

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = BmiTheme.dark();
    return MaterialApp(
      home: InputPage(),
      theme: theme,
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  Color malecardcolor = kInactiveContainerColor;
  Color femalecardcolor = kInactiveContainerColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'bmi calculator',
          style: BmiTheme.darkTextTheme.headline1,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: myContainer(
                    tapFunction: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerChild(
                          childIcon(
                            FontAwesomeIcons.mars,
                            kIconColor,
                            kIconSize,
                          ),
                          'male   ',
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: myContainer(
                    tapFunction: () {
                      setState(() {
                        selectedGender = Gender.female;
                        print('female tapped');
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerChild(
                          childIcon(
                            FontAwesomeIcons.venus,
                            kIconColor,
                            kIconSize,
                          ),
                          'female',
                        )
                      ],
                    )),
              ),
            ],
          )),
          Expanded(
            child: myContainer(
                color: kInactiveContainerColor,
                containerChild: Column(
                  children: [
                    Text(
                      'height',
                      style: BmiTheme.darkTextTheme.bodyText2,
                    ),
                  ],
                )),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: myContainer(
                    color: kInactiveContainerColor,
                    containerChild: Column(
                      children: [],
                    )),
              ),
              Expanded(
                child: myContainer(
                    color: kInactiveContainerColor,
                    containerChild: Column(
                      children: [],
                    )),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
            decoration: BoxDecoration(
              color: kBottomContainerColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
