import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fl_chart/fl_chart.dart';

import 'Screens/starting_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hand Controlled Carrera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartingScreen(),
    );
  }
}




