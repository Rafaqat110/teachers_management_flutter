import 'package:flutter/material.dart';

import 'model.dart';



class UpladAssignment extends StatefulWidget {
  const UpladAssignment({super.key});

  @override
  State<UpladAssignment> createState() => _UpladAssignmentState();
}

class _UpladAssignmentState extends State<UpladAssignment> {

  List<ListItem> items = [

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
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



      body:  SingleChildScrollView(

        child:  ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(

              title: Text(items[index].subjectName),
              trailing: Text(items[index].courseName),
              subtitle: Text(DateTime.now().toString().substring(0,10,),style: TextStyle(fontSize: 17),),
            );
          },
        ),


      ),
    );
  }
  Future<void> _displayDialog(BuildContext context)  async {

    final _formKey = GlobalKey<FormState>();


    TextEditingController subjectNameController = TextEditingController();
    TextEditingController topicNameController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:  const Text('Add Assignment Details'),
            content:  Form(
              key: _formKey,
              child: Column(

                children: [
                  TextFormField(
                    controller: subjectNameController,
                    decoration: const InputDecoration(hintText: "Enter Subject Name"),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter Name";
                      }else{
                        return null;
                      }
                    },

                  ),
                  TextFormField(
                    controller: topicNameController,
                    decoration: const InputDecoration(hintText: "Enter Topic Name"),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter Name";
                      }else{
                        return null;
                      }
                    },

                  ),

                ],
              ),
            ),
            actions: [
              TextButton(
                child:  Text('SUBMIT'),
                onPressed: () {
                    setState(() {
                       if(_formKey.currentState!.validate()) {
                         items.add(ListItem(
                             subjectName: subjectNameController.text!,
                             courseName: topicNameController.text!));
                       }
                    });





                  // addItem(subjectNameController.text);


                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });

  }

}

