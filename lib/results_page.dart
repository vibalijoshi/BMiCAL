import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/refactor_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.BMIresult, this.resultText, this.interpretation});
  final String BMIresult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                  child: Text(
                    'Your Result',
                    style: kresultPageheading,
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 6,
              child: RefactorContainer(
                colour: kactiveColorContainers,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Text(
                          resultText,
                          textAlign: TextAlign.center,
                          style: kweightHeading,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          BMIresult,
                          style: knumberResultText,
                        ),

                      ),
                    ),
                    Expanded(
                      child: Text(
                        interpretation,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],

                ),
              ),
          ),
          BottomCalculations(
            onpress: (){
              Navigator.pushNamed(context, '/');
            },
            message: 'RECALCULATE',

          ),
        ],
      ),

    );
  }
}
