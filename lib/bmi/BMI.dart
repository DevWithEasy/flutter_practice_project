import 'package:flutter/material.dart';
import 'package:flutter_practice_apps/bmi/Home.dart';

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: Home(),
    );
  }
}