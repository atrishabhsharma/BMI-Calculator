import 'package:flutter/material.dart';

class ResuseableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ResuseableCard({@required this.colour, @required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
