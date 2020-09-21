import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/buttombutton.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String bmiresult;
  final String resultext;
  final String interpretation;

  Result({this.bmiresult, this.resultext, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomCenter,
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ResuseableCard(
                  colour: activecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultext.toUpperCase(),
                        style: kResultStyle,
                      ),
                      Text(
                        bmiresult,
                        style: kBMIStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyStyle,
                      )
                    ],
                  ))),
          BottomButton(
              buttontitle: 'RE-CALCUATE',
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
