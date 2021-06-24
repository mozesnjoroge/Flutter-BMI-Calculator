import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const double bottomContainerHeight = 80.0;
const int customColorCode = 0XFF1D1E33;
const double circularRadiusValue = 10.0;

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
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    customColor: Color(customColorCode),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    customColor: Color(customColorCode),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              customColor: Color(customColorCode),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    customColor: Color(customColorCode),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    customColor: Color(customColorCode),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity, //stretch along the screen
            height: bottomContainerHeight,
            //border decoration for the container
            decoration: BoxDecoration(
              color: Color(0XFFEA1556),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(circularRadiusValue),
                bottomLeft: Radius.circular(circularRadiusValue),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor});
  final Color customColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(circularRadiusValue),
      ),
    );
  }
}
//0XFF1D1E33
