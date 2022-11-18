import 'package:flutter/material.dart';
import 'package:n_calc/pages/calc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N Calc',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.black,
      ),
      home: const CalcPage(),
    );
  }
}
