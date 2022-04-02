import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function()? onPress;

  ReusableCard({required this.color, required this.cardChild, this.onPress});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      // onTap: () {
      //   onPress();
      // },
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
