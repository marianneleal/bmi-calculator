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
  Color malecardcolor = inactiveContainerColor;
  Color femalecardcolor = inactiveContainerColor;

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
                        ? activeContainerColor
                        : inactiveContainerColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerChild(
                          childIcon(
                            FontAwesomeIcons.mars,
                            iconColor,
                            iconSize,
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
                        ? activeContainerColor
                        : inactiveContainerColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerChild(
                          childIcon(
                            FontAwesomeIcons.venus,
                            iconColor,
                            iconSize,
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
                color: inactiveContainerColor,
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
                    color: inactiveContainerColor,
                    containerChild: Column(
                      children: [],
                    )),
              ),
              Expanded(
                child: myContainer(
                    color: inactiveContainerColor,
                    containerChild: Column(
                      children: [],
                    )),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
