import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';
import 'results_page.dart';

enum Gender { male, female, n }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColour;
  // Color femaleCardColor = inactiveCardColour;
//1=male,2=female
//   void updateColour(Gender selectedGender) {
//     if (selectedGender == Gender.male) {
//       if (maleCardColor == inactiveCardColour) {
//         maleCardColor = activeCardColour;
//         femaleCardColor = inactiveCardColour;
//       } else {
//         maleCardColor = inactiveCardColour;
//       }
//     } else {
//       if (femaleCardColor == inactiveCardColour) {
//         femaleCardColor = activeCardColour;
//         maleCardColor = inactiveCardColour;
//       } else {
//         femaleCardColor = inactiveCardColour;
//       }
//     }
//   }
  Gender selectedGender = Gender.n;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        //foregroundColor: Color.fromARGB(255, 209, 201, 201),
        backgroundColor: Color(0xFF0A0E21),
      ),
      // body: Center(
      //   child: Text(
      //     'Body Text',
      //   ),
      // ),
      // floatingActionButton: Theme(
      //   data: ThemeData.dark(),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () => {},
      //   ),
      //,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {
                setState(() {});
              },
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Height'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor: Color(0xff8d8e98),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xffeb1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      //activeColor: Color(0xffeb1555),
                      //inactiveColor: Color(0xff8d8e98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {});
                    },
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            // FloatingActionButton(
                            //   child: Icon(Icons.add),
                            //   backgroundColor: Color(0xff4c4f5e),
                            //   onPressed: () {},
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {});
                    },
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            // FloatingActionButton(
                            //   child: Icon(Icons.add),
                            //   backgroundColor: Color(0xff4c4f5e),
                            //   onPressed: () {},
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    interpretation: calc.getInterpretation(),
                    resultText: calc.getResult(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// class RoundIconButton extends StatelessWidget {
//   RoundIconButton({required this.icon, required this.onPressed});
//   final IconData icon;
//   final Function onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       child: Icon(icon),
//       onPressed: onPressed,
//       elevation: 100,
//       constraints: BoxConstraints.tightFor(
//         width: 56,
//         height: 56,
//       ),
//       shape: CircleBorder(),
//       fillColor: Color(0xff4c4f5e),
//     );
//   }
// }
