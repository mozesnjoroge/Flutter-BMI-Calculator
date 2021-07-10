import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1D1E33);
const double circularRadiusValue = 10.0;
const bottomContainerColor = Color(0XFFEA1556);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                //male card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //print('Male card was tapped');
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      customColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      childCard: IconContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                //female card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // print('Female card was tapped');
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      customColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      childCard: IconContent(
                        cardText: 'FEMALE',
                        cardIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              customColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    customColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    customColor: activeCardColor,
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
              color: bottomContainerColor,
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
