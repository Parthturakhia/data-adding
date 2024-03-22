import 'package:flutter/material.dart';
import 'package:flutter_lab/GlobalData.dart';
import 'package:flutter_lab/student.dart';

import 'SecondPage.dart';


void main() {
  runApp(MaterialApp(
      home: myapp())
  );
}

class myapp extends StatelessWidget {
  TextEditingController txtno=new TextEditingController();
  TextEditingController txtname=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hii'),),
      body: Column(
        children: [
          TextField(controller: txtno,
          decoration: InputDecoration(
            hintText: "Enter Roll no:",
          ),
          ),
          TextField(controller: txtname,
            decoration: InputDecoration(
              hintText: "Enter Name:",
            ),
          ),
          ElevatedButton(onPressed: (){
            Student s1=new Student();
            s1.no=int.parse(txtno.text);
            s1.name=txtname.text;
            GlobalData.studentList.add(s1);
          }, child: Text('add')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          },));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
