import 'package:flutter/material.dart';
class MyRoundButton extends StatelessWidget {
  MyRoundButton({this.icon, this.whenPressed});
  final IconData icon;
  final Function whenPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
      ),
      onPressed:whenPressed,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),


    );
  }
}
