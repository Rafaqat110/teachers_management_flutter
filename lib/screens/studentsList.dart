import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model.dart';

class StudnetsList extends StatefulWidget {
  const StudnetsList({super.key});

  @override
  State<StudnetsList> createState() => _StudnetsListState();
}

class _StudnetsListState extends State<StudnetsList> {

  List<addStudentModel> stdata = [];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),

          onPressed: (){
            _displayDialog(context);

          }),

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Studnets List"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: stdata.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  child: ListTile(

                    title: Text(stdata[index].stName),
                    trailing: Text(stdata[index].stRollNo),
                    subtitle: Text(stdata[index].stSection),
                    leading: Text(stdata[index].stSemester),
                  ),
                );
              },
            ),
            
            
          ],
        ),
      ),
    );
  }

  Future<void> _displayDialog(BuildContext context)  async {
    TextEditingController studentNameController = TextEditingController();
    TextEditingController studentRollnOController = TextEditingController();
    TextEditingController studenSectionController = TextEditingController();
    TextEditingController studentSemesterController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:  const Text('Add Assignment Details'),
            content: Column(
              children: [
                Flexible(
                  child: TextField(
                    controller: studentNameController,

                    decoration: const InputDecoration(hintText: "Enter Student Name"),
                  ),
                ),
                Flexible(child: TextField(
                  controller: studentRollnOController,

                  decoration: const InputDecoration(hintText: "Enter Student Roll No"),
                ),),
                Flexible(child: TextField(
                  controller: studentSemesterController,

                  decoration: const InputDecoration(hintText: "Enter Student Semester"),
                ),),
                Flexible(child: TextField(
                  controller: studenSectionController,

                  decoration: const InputDecoration(hintText: "Enter Student Section"),
                ),),


              ],
            ),
            actions: [
              Flexible(
                child: TextButton(
                  child:  Text('SUBMIT'),
                  onPressed: () {
                    setState(() {
                      stdata.add(addStudentModel(
                          stName: studentNameController.text,
                          stRollNo: studentRollnOController.text,
                          stSection: studenSectionController.text,
                          stSemester: studentSemesterController.text));
                
                    });
                
                
                    // addItem(subjectNameController.text);
                
                
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          );
        });

  }



}
