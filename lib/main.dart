import 'package:flut_abhi/alignment_screen.dart';
import 'package:flut_abhi/counter_screen.dart';
import 'package:flut_abhi/home_screen.dart';
import 'package:flut_abhi/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Abhi app",
        theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 25, color: Colors.red),
            bodyMedium: TextStyle(fontSize: 16, color: Colors.blue)
          )
        ),
        home: CounterScreen()
    );
  }


}


