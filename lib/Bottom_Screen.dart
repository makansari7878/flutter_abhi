import 'package:flut_abhi/alignment_screen.dart';
import 'package:flut_abhi/counter_screen.dart';
import 'package:flut_abhi/login_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int myCurrentIndex = 0;
  final tabs = [
    HomeScreen(),
    AlignmentScreen(),
    LoginScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation"),),
      body: tabs[myCurrentIndex],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myCurrentIndex,
          iconSize: 30,
          selectedFontSize: 20,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.cyan,
                label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              backgroundColor: Colors.cyan,
              label: "Alignment",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.cyan,
              label: "Login",
            ),
          ],
        onTap: (index){
            setState(() {
              myCurrentIndex = index;
            });
        },
      ) ,

    );
  }
}











