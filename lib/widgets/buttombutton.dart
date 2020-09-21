import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttontitle;
  final Function ontap;

  BottomButton({@required this.buttontitle, @required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 6.0),
        color: bottombuttoncolor,
        height: bottombuttonheight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttontitle,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
