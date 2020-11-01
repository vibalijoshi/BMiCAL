import 'package:flutter/material.dart';
import 'constants.dart';
class InsideCard extends StatelessWidget {
  InsideCard({this.iconName,this.textInit });
  final IconData iconName;
  final String textInit;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textInit,
          style: kmyTextStyle,
        )
      ],
    );
  }
}

