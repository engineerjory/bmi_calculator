import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0A0E21),
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          overlayColor: Color(0x29EB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xff8D8E98),
          thumbColor: Color(0xffEB1555),
        ),
      ),
      initialRoute: '/inputpage',
      routes: {
        '/inputpage': (context) => InputPage(),
        // '/resultpage': (context) => ResultPage(),
      },
    );
  }
}
