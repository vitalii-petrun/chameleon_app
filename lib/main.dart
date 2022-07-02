import 'package:bg_color_changer/chameleon_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChameleonApp());
}

///contains MaterialApp that runs in main() function
class ChameleonApp extends StatelessWidget {
  /// const constructor for the class
  const ChameleonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChameleonPage(),
    );
  }
}
