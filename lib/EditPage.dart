import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile'),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter new roll no:",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter new name:",
            ),
          ),
          ElevatedButton(onPressed: (){
            // Student s1=new Student();
            // s1.no=int.parse(txtno.text);
            // s1.name=txtname.text;
            // GlobalData.studentList.add(s1);
          }, child: Text('add')),
        ],
      ),
    );
  }
}
