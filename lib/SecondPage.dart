import 'package:flutter/material.dart';
import 'package:flutter_lab/GlobalData.dart';
import 'package:flutter_lab/ThirdPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'),),
      body: ListView.builder(
          itemCount: GlobalData.studentList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(GlobalData.studentList[index].name),
                onTap: (){
                  GlobalData.selectedIndex=index;
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  },)).then((value) {
                    setState(() {

                    });
                  });
                },
              ),
            );
          },),
    );
  }
}
