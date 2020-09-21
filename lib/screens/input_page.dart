import 'package:bmi_calculator/brain.dart';
import 'package:bmi_calculator/screens/results.dart';
import 'package:bmi_calculator/widgets/buttombutton.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:bmi_calculator/widgets/roundedbuttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ResuseableCard(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male
                      ? activecardcolor
                      : inactiveactivecardcolor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                )),
                Expanded(
                    child: ResuseableCard(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  colour: selectedgender == Gender.female
                      ? activecardcolor
                      : inactiveactivecardcolor,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                )),
              ],
            ),
          ),
          Expanded(
              child: ResuseableCard(
            colour: activecardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kHeavytext,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                // Color not overriding
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Color(0xff8d8e98),
                    thumbColor: Color(0xffEB1555),
                    overlayColor: Color(0xffEB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.grey,
                      inactiveColor: null,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ResuseableCard(
                      colour: activecardcolor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kHeavytext,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ResuseableCard(
                                      colour: activecardcolor,
                                      cardChild: RoundedButton(
                                        icon: Icon(FontAwesomeIcons.minus),
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                      )),
                                ),
                                Expanded(
                                  child: ResuseableCard(
                                      colour: activecardcolor,
                                      cardChild: RoundedButton(
                                        icon: Icon(FontAwesomeIcons.plus),
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  child: ResuseableCard(
                      colour: activecardcolor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kHeavytext,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ResuseableCard(
                                      colour: activecardcolor,
                                      cardChild: RoundedButton(
                                        icon: Icon(FontAwesomeIcons.minus),
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                      )),
                                ),
                                Expanded(
                                  child: ResuseableCard(
                                      colour: activecardcolor,
                                      cardChild: RoundedButton(
                                        icon: Icon(FontAwesomeIcons.plus),
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))),
            ],
          )),
          BottomButton(
            buttontitle: 'CALCULATE YOUR BMI',
            ontap: () {
              Brain _brain = Brain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                            bmiresult: _brain.calculateBMI(),
                            resultext: _brain.getResult(),
                            interpretation: _brain.getInterpret(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}
