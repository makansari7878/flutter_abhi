import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefScreen extends StatefulWidget {
  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {

  TextEditingController usernameController = TextEditingController();
  String username = "";

  @override
  void initState() {
    super.initState();
    loadSaveData();
  }

  loadSaveData() async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  setState(() {
    username = sp.getString("mykey") ?? "";
  });
  }

  saveData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      username = usernameController.text;
    });
    sp.setString("mykey", username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared prefs"),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  child: TextField(
                    controller: usernameController,
                  )
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                saveData();
              },
                  child: Text("Click"))
            ],
          ),
        ),
      ),
    );
  }
}
