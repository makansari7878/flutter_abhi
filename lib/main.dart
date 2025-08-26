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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 25, color: Colors.red),
            bodyMedium: TextStyle(fontSize: 16, color: Colors.blue),

          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.redAccent,
            surface:Colors.amberAccent
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow, width: 3),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
            ),
            labelStyle: TextStyle(color:Colors.blue, fontSize: 20),
            hintStyle: TextStyle(color: Colors.deepPurple)
          )
        ),
        home: CounterScreen()
    );
  }


}


