import 'package:bmi_calculator/icon_constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Result',
              style: kResultsPageTitle,
            ),
            Expanded(
              child: ReusableCard(
                customColor: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'OVERWEIGHT',
                        style: kResultsTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        '26.7',
                        style: kBMITextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'You have a higher than normal body weight. Try to exercise more.',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLargeButtonTextStyle,
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity, //stretch along the screen
                height: kBottomContainerHeight,
                //border decoration for the container
                decoration: BoxDecoration(
                  color: kBottomContainerColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kCircularRadiusValue),
                    bottomLeft: Radius.circular(kCircularRadiusValue),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              }, //TODO Know how to change the screen transition
            ),
          ],
        ));
  }
}
