import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Result',
                style: kResultPageTitleStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '24.1',
                      style: kBMINumberTextStyle,
                    ),
                    Text(
                      'your BMI is quite high',
                      textAlign: TextAlign.center,
                      style: kBMIBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                label: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
            // Expanded(
            //   child: Container(
            //     child: Center(
            //       child: Text(
            //         'Re-Calculate',
            //         style: kLargeButtonTextStyle,
            //       ),
            //     ),
            //     color: kBottomContainerColor,
            //     height: kBottomContainerWidth,
            //     width: double.infinity,
            //   ),
            // )
          ],
        ));
  }
}
