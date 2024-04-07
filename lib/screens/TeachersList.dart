import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model.dart';

class Teacherslist extends StatefulWidget {
  const Teacherslist({super.key});

  @override
  State<Teacherslist> createState() => _TeacherslistState();
}

class _TeacherslistState extends State<Teacherslist> {

  List<TeacherList> techaerList = [];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(



      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: (){
                  _displayDialog(context);

                  },
                child: Text("Add Teachers"))

          ]
        ),


        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {

          }
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),


      backgroundColor: Colors.white38,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          _displayDialog(context);


        }
      ),
      extendBody: true,
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Teachers List"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: techaerList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  child: ListTile(

                    title: Text(techaerList[index].teacherName),
                    trailing: Text(techaerList[index].teacherSubject),
                    subtitle: Text(techaerList[index].techaerNic),
                    leading: Text(techaerList[index].teacherMobileNo),
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
    TextEditingController teacherNameController = TextEditingController();
    TextEditingController teacherMobileNoController = TextEditingController();
    TextEditingController teacherCnicController = TextEditingController();
    TextEditingController teacherCourseController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:  const Text('Add Assignment Details'),
            content: Column(
              children: [
                Flexible(
                  child: TextField(
                    controller: teacherNameController,

                    decoration: const InputDecoration(hintText: "Enter Teacher Name"),
                  ),
                ),
                Flexible(child: TextField(
                  controller: teacherCnicController,

                  decoration: const InputDecoration(hintText: "Enter Teacher CINIC"),
                ),),
                Flexible(child: TextField(
                  controller: teacherCourseController,

                  decoration: const InputDecoration(hintText: "Enter Teacher Subject"),
                ),),
                Flexible(child: TextField(
                  controller: teacherMobileNoController,

                  decoration: const InputDecoration(hintText: "Enter Teacher Mobile No"),
                ),),


              ],
            ),
            actions: [
              Flexible(
                child: TextButton(
                  child:  Text('SUBMIT'),
                  onPressed: () {
                    setState(() {
                      techaerList.add(TeacherList(
                          teacherName: teacherNameController.text,
                          teacherSubject: teacherCourseController.text,
                          techaerNic: teacherCnicController.text,
                          teacherMobileNo: teacherMobileNoController.text));

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
