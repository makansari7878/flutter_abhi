import 'package:flutter/material.dart';

class AlignmentScreen extends StatelessWidget {
  const AlignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alignment screen"),),
      body: Material(
        color: Colors.greenAccent,
        child: Center(
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 300,
                  width: 100,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
