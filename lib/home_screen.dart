
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("HOME SCREEN"),),
     body: Material(
       color: Colors.greenAccent,
       child: getLongListView()
     ),
   );
  }
  //

  Widget getListView(){
    var listView = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text("FIRST RECORD"),

          trailing: Icon(Icons.access_alarm),
          onTap: (){
            debugPrint("the item is cliecked");
          },
        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text("SECOND RECORD"),
          subtitle: Text("99985858"),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            debugPrint("the item is cliecked");
          },
        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text("THIRD RECORD"),
          subtitle: Text("99985858"),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            debugPrint("the item is cliecked");
          },
        ),
      ],
    );

    return listView;
  }

  List<String> getItems(){
    var items = List<String>.generate(1000, (counter) => "Item number -- $counter");
    return items;
  }

  Widget getLongListView(){
    var itemList = getItems();

    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.ac_unit_outlined),
        title: Text(itemList[index]),
        onTap: (){
          debugPrint("you clicked ${itemList[index]}");
        },
      );
    });

    return listView;

  }

}