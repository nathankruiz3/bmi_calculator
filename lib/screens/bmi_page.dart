// to use the custom constant values
import 'package:bmi_calculator/constants.dart';
// to use the custom bottom button widget
import '../components/bottom_button.dart';
// to use the custom card widget
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class BMIPage extends StatelessWidget {
  // Constructor
  BMIPage({this.bmiResult, this.resultText, this.desc});
  // strings to represent the text on this page, that varies depending on the bmi
  final String bmiResult, resultText, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result...',
            style: kResultText,
            textAlign: TextAlign.center,
          ),
          Expanded(
            // using the custom card as a background
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'KEY: ',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w100),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Underweight: < 18.6',
                            style: TextStyle(color: Colors.yellow),
                          ),
                          Text(
                            'Normal: > 18.6 , < 25',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            'Overweight: > 24',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // text to represent the resultText ( ex. overweight )
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          resultText,
                          style: kBMILabel,
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        Text(
                          bmiResult,
                          style: kBMINumberStyle,
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        // text to represent the description ( ex. your body weight is higher than normal )
                        Text(
                          desc,
                          style: kBMIText,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  // text to represent the bmi
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
