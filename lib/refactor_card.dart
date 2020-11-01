import 'package:flutter/material.dart';
class RefactorContainer extends StatelessWidget {
  RefactorContainer({this.colour, this.cardChild, this.afterTap});
  final Color colour;
  final Widget cardChild;
  final Function afterTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: afterTap,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
