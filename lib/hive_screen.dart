import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  
  @override
  void initState() {
    super.initState();
    storeData();
  }
  
  storeData() async{
    var box = await Hive.openBox("myfile");
    box.put("name", "Ansari");
    box.put("age", 22);
    box.put("details", {
      "email": "makansari",
      "phone": 98778888
    });
    
    debugPrint(box.get("name"));
    debugPrint(box.get("age"));
    debugPrint(box.get("details"));
  }
  
  Widget showData(){
    return FutureBuilder<Box>
      (future: Hive.openBox("myfile"),
        builder: (context, snapshot){
        if(!snapshot.hasData){
          return CircularProgressIndicator();
        }

        final box = snapshot.data!;
        final details = box.get("details", defaultValue: {}) as Map;

        return Column(
          children: [
            Text("Name : ${box.get("name", defaultValue: "Unknown")}"),
            SizedBox(height: 15,),
            Text("Age : ${box.get("age", defaultValue: "Unknown")}"),
            SizedBox(height: 15,),
            Text("Email Id  : ${details["email"]?? "No email id"}"),
          ],
        );
        });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
