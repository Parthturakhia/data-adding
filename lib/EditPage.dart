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





class EditPage extends StatelessWidget {
  final int selectedIndex;

  const EditPage({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve the student to edit using selectedIndex
    Student studentToEdit = GlobalData.studentList[selectedIndex];

    return Scaffold(
      appBar: AppBar(title: Text('Edit Student')),
      body: Column(
        children: [
          // Widgets to edit student details (e.g., text fields)
          // You can use TextFormField or other widgets for editing
          // When editing is done, update the student details in GlobalData.studentList
          ElevatedButton(
            onPressed: () {
              // Update student details in the list
              GlobalData.studentList[selectedIndex] = updatedStudent;
              Navigator.pop(context); // Return to the previous page
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
