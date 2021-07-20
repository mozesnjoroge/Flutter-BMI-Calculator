import 'package:flutter/material.dart';
import 'icon_constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor, this.cardChild, this.onPress});
  final Color customColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(kCircularRadiusValue),
        ),
      ),
    );
  }
}
