import 'package:flutter/material.dart';
import 'package:quiz_with_4_answers/item/start.dart';

void main() {
  runApp(myDev());
}

class myDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start(),
    );
  }
}
