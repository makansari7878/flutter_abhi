
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("HOME SCREEN"),),
     body: Material(
       color: Colors.greenAccent,
       child: Center(
         child:  Text("Welcome to Home Screen", textDirection: TextDirection.ltr,
             style: TextStyle(fontSize: 20, color: Colors.red,)
         ),
       ),
     ),
   );
  }

}