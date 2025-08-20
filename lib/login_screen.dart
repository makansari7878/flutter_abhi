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
        padding: EdgeInsets.only(left: 20),

        child: Column(
          children: [

            SizedBox(height: 50,),
            Row(
              children: [
                Text("Welcome to Login Screen number -- : ${myMathFunc()}"),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Text("Welcome to Second Number -- : ${myMathFunc()}"),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                  Image.asset('images/koc1.png', height: 200, width: 200,)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){
                      myAlertDialog(context);
                    },
                    child: Text("SUBMIT"))
              ],
            )

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

  myAlertDialog(BuildContext context){
    showDialog(context: context, builder: (abc) => AlertDialog(
      title: Text("MY ALERT !!!"),
      content: Text("Do you want to exit ?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(abc).pop();
        },
            child: Text("YES"))
      ],
    ));
  }

}

