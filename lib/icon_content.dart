import 'package:flutter/material.dart';
import 'icon_constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.cardText, @required this.cardIcon});
  final String cardText;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
