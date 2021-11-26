import 'dart:ui';
import 'package:bmi_calculator/container_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'bmi_theme.dart';
import 'child_icon.dart';
import 'my_container.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF167030);
const bottomContainerColor = Color(0xFF993330);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
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
                    containerColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerChild(
                          childIcon(
                            FontAwesomeIcons.mars,
                            Colors.amber,
                            80.0,
                          ),
                          Colors.amber,
                          'male',
                        )
                      ],
                    )),
              ),
              Expanded(
                child: myContainer(
                    containerColor,
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                        )
                      ],
                    )),
              ),
            ],
          )),
          Expanded(
            child: myContainer(
                containerColor,
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.mars,
                    )
                  ],
                )),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: myContainer(
                    containerColor,
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                        )
                      ],
                    )),
              ),
              Expanded(
                child: myContainer(
                    containerColor,
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                        )
                      ],
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
