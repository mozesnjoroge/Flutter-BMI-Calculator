import 'package:bmi_calculator/icon_constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
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
                        resultText.toUpperCase(),
                        style: kResultsTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        interpretation,
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
