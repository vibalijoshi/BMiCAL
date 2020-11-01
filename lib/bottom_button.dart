import 'package:flutter/material.dart';
import 'constants.dart';

class BottomCalculations extends StatelessWidget {
  BottomCalculations({ this.onpress, this.message});
  final Function onpress;
  final String message;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      //(){
      //   Navigator.pushNamed(context, '/result');
      // },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: kcalculateText,


          ),
        ),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}