import 'package:flutter/material.dart';

const double circularRadiusValue = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor, this.childCard});
  final Color customColor;
  //child property
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(circularRadiusValue),
      ),
    );
  }
}
