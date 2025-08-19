import 'package:flut_abhi/home_screen.dart';
import 'package:flut_abhi/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Abhi app",
        home: LoginScreen()
    );
  }


}


