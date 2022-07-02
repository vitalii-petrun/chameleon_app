import 'dart:math';
import 'package:flutter/material.dart';

///a page that shows centred label and handles taps
class ChameleonPage extends StatefulWidget {
  ///const constructor for the class
  const ChameleonPage({Key? key}) : super(key: key);

  @override
  State<ChameleonPage> createState() => _ChameleonPageState();
}

class _ChameleonPageState extends State<ChameleonPage> {
  Color bgColor = Colors.white;
  Color fgColor = Colors.black;
  static const double brightnessPivot = 0.5;
  static const double fontSize = 25;

  int randColorValue() {
    const int colorValueNumber = 256;

    return Random().nextInt(colorValueNumber);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = Color.fromRGBO(
            randColorValue(),
            randColorValue(),
            randColorValue(),
            1,
          );
          fgColor = bgColor.computeLuminance() > brightnessPivot
              ? Colors.black
              : Colors.white;
        });
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Text(
            "Hey there! :)",
            style: TextStyle(
              fontSize: fontSize,
              color: fgColor,
            ),
          ),
        ),
      ),
    );
  }
}
