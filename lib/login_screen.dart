import 'dart:math';

import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"),),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.greenAccent,

        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Welcome to Login Screen number -- : ${myMathFunc()}"),
            SizedBox(height: 30,),
            Text("Welcome to Second Number -- : ${myMathFunc()}"),
          ],
        )
        ),

    );
  }

  int myMathFunc(){
    var random =  Random();
    var number = random.nextInt(10);
    return number;
  }
}
