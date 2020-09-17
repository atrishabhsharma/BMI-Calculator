import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardcolor = Color(0xff1D1E33);
const bottombuttoncolor = Color(0xffEB1555);
const bottombuttonheight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ResuseableCard(
                    colour: cardcolor,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  )),
                  Expanded(
                      child: ResuseableCard(
                    colour: cardcolor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ResuseableCard(
              colour: cardcolor,
              cardChild: null,
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuseableCard(colour: cardcolor, cardChild: null),
                  ),
                  Expanded(
                    child: ResuseableCard(colour: cardcolor, cardChild: null),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              color: bottombuttoncolor,
              height: bottombuttonheight,
              width: double.infinity,
            )
          ],
        ));
  }
}
