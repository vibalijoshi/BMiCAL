import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'refactor_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon.dart';
import 'results_page.dart';
import 'package:bmi_calculator/Calulate_bMI.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;
  int weight = 40;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RefactorContainer(
                    afterTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveColorContainers
                        : kinactiveColorContainers,
                    cardChild: InsideCard(
                      iconName: FontAwesomeIcons.mars,
                      textInit: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RefactorContainer(
                    afterTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveColorContainers
                        : kinactiveColorContainers,
                    cardChild: InsideCard(
                      iconName: FontAwesomeIcons.venus,
                      textInit: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RefactorContainer(
              colour: kinactiveColorContainers,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kmyTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget> [
                      Text(
                        height.toString(),
                        style: knumberText
                      ),
                      Text(
                        'cm',
                        style: kmyTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      )
                    ),
                    child: Slider(
                        value:height.toDouble(),
                        min: 110.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double sliderValue){
                          setState(() {
                            height = sliderValue.toInt();
                          });
                        },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RefactorContainer(
                    colour: kinactiveColorContainers,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(
                          'WEIGHT(KG)',
                          style: kmyTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [
                            MyRoundButton(
                                icon: FontAwesomeIcons.minus,
                                whenPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                            ),
                            MyRoundButton(
                                icon: FontAwesomeIcons.plus,
                                whenPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RefactorContainer(
                      colour: kinactiveColorContainers,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text(
                            'AGE',
                            style: kmyTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: knumberText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget> [
                              MyRoundButton(
                                icon: FontAwesomeIcons.minus,
                                whenPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              MyRoundButton(
                                icon: FontAwesomeIcons.plus,
                                whenPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
          BottomCalculations(
            onpress: (){
              BMIcalculator BMI = BMIcalculator(
                height: height,
                weight: weight
              );
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      BMIresult: BMI.calculateBMI(),
                      resultText: BMI.getResult(),
                      interpretation: BMI.getMessage(),


                    ),
                ),
            );
            },
            message: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}


