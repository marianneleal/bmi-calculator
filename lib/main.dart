import 'dart:ui';
import 'package:bmi_calculator/container_child.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'bmi_theme.dart';
import 'child_icon.dart';
import 'my_container.dart';
import 'constants.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());
enum Gender { male, female }
int height = 180;
double weight = 70;
int age = 25;

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
                          'male ',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'height',
                      style: BmiTheme.darkTextTheme.headline1,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(height.toString(), style: kNumberTextStyle),
                        Text(' cm', style: BmiTheme.darkTextTheme.bodyText2)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x1FEB1555),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        divisions: 100,
                        onChanged: (double newValue) {
                          height = newValue.toInt();
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        inactiveColor: Colors.grey,
                      ),
                    )
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('weight', style: BmiTheme.darkTextTheme.headline1),
                        Text(weight.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight -= 0.5;
                                  });
                                }),
                            SizedBox(width: 10),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight += 0.5;
                                  });
                                }),
                          ],
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: myContainer(
                    color: kInactiveContainerColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('age', style: BmiTheme.darkTextTheme.headline1),
                        Text(age.toString(), style: kNumberTextStyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  })
                            ])
                      ],
                    )),
              ),
            ],
          )),
          Container(
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
          ),
        ],
      ),
    );
  }
}
