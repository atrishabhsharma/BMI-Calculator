import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/buttombutton.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
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
                        'Normal',
                        style: kResultStyle,
                      ),
                      Text(
                        '18.3',
                        style: kBMIStyle,
                      ),
                      Text(
                        'Your BMI number is Quite Low , You should eat more',
                        textAlign: TextAlign.center,
                        style: kBodyStyle,
                      )
                    ],
                  ))),
          BottomButton(
              buttontitle: 'Re-calculate',
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
