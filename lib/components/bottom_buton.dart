import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButon extends StatelessWidget {
  final Function()? onTap;
  final String buttonTitle;

  BottomButon({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kBottomContainerHeight,
      margin: EdgeInsets.only(top: 10.0),
      color: kBottomContainerColor,
      child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: onTap,
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          )),
    );
  }
}
