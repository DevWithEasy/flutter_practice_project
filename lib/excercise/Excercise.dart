import 'package:flutter/material.dart';
import 'package:flutter_practice_apps/Excercise/Home.dart';

class Excercise extends StatelessWidget {
  const Excercise({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Excercise App',
      home: Home(),
    );
  }
}