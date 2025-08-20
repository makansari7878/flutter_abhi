import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {    
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen>{

var username = "";
var password = "";
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

void processText(){
  setState(() {
    username = usernameController.text;
    password = passwordController.text;
  });
}
  //
  var counter = 0;
  incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Demo"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.greenAccent,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              children: [
                SizedBox(height: 50,),
                Expanded(child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Enter user name",
                    label: Text("Username"),
                    border: OutlineInputBorder(),
                  ),
                )),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  processText();
                },
                    child: Text("CLICK ")),

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Username is  :  ${username}")
                  ],
            ),
          ],
        ),
        
      ),
    );
  }
  
}