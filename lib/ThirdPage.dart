import 'package:flutter/material.dart';
import 'package:flutter_lab/GlobalData.dart';

import 'EditPage.dart';



class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: Column(
        children: [
          Text('Rollno.:'+GlobalData.studentList[GlobalData.selectedIndex].no.toString()),
          Text('Name.:'+GlobalData.studentList[GlobalData.selectedIndex].name),
          ElevatedButton(onPressed: (){
            GlobalData.studentList.removeAt(GlobalData.selectedIndex);
            Navigator.pop(context);
          }, child: Text('Delete')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              var selectedIndex;
              return EditPage(selectedIndex.GlobalData.selectedIndex, selectedIndex: null,);
            },));
          }, child: Text('Edit')),
        ],
      ),
    );
  }
}
