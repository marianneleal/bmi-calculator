import 'dart:ui';
import 'package:bmi_calculator/container_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'bmi_theme.dart';
import 'child_icon.dart';
import 'my_container.dart';

const bottomContainerHeight = 80.0;
const inactiveContainerColor = Color(0xFF167030);
const activeContainerColor = Color(0xFFEB1555);
const bottomContainerColor = Color(0xFF993330);
const iconColor = Colors.amberAccent;
const iconSize = 80.0;
void main() => runApp(BMICalculator());

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
  Color malecardcolor = inactiveContainerColor;
  Color femalecardcolor = inactiveContainerColor;

  // 0 = male, 1 = female
  void updateColor(int gender) {
    if (gender == 0) {
      if (malecardcolor == inactiveContainerColor) {
        malecardcolor = activeContainerColor;
        femalecardcolor = inactiveContainerColor;
      } else {
        malecardcolor = inactiveContainerColor;
      }
    }
    if (gender == 1) {
      if (femalecardcolor == inactiveContainerColor) {
        femalecardcolor = activeContainerColor;
        malecardcolor = inactiveContainerColor;
      } else {
        femalecardcolor = inactiveContainerColor;
      }
    }
  }

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
                child: GestureDetector(
                  // behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      updateColor(0);
                      print('male tapped');
                    });
                  },
                  child: myContainer(
                      malecardcolor,
                      Column(
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
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                      print('female tapped');
                    });
                  },
                  child: myContainer(
                      femalecardcolor,
                      Column(
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
              ),
            ],
          )),
          Expanded(
            child: myContainer(
                inactiveContainerColor,
                Column(
                  children: [
                    Text('height', style: BmiTheme.darkTextTheme.bodyText2)
                  ],
                )),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: myContainer(
                    inactiveContainerColor,
                    Column(
                      children: [],
                    )),
              ),
              Expanded(
                child: myContainer(
                    inactiveContainerColor,
                    Column(
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
