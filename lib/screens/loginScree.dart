





import 'package:flutter/material.dart';
import 'package:teacher_management/screens/signUp_Screen.dart';

import '../navigation.dart';


class LogIn extends StatefulWidget {

  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,

           child:Container(
             color: Colors.cyan,
             child: Center(
               child: Padding(
                 padding: const EdgeInsets.all(50.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text("Wellcome",style: TextStyle(color: Colors.white,fontSize: 25)),

                     const SizedBox(height: 20,),

                      TextFormField(style:TextStyle(color: Colors.white),
                       decoration: const InputDecoration(
                           labelText: 'Name',labelStyle: TextStyle(color: Colors.white)),
                        controller: _name,
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter Name";
                          }else{
                            return null;
                          }
                        },

                     ),

                     const SizedBox(height: 20,),

                      TextFormField(style:TextStyle(color: Colors.white),
                       decoration: const InputDecoration(
                           labelStyle: TextStyle(color: Colors.white),
                           labelText: 'Password',suffix: Icon(Icons.remove_red_eye_sharp)),
                     controller: _email,
                        validator: (value){
                        if(value!.isEmpty){
                          return "Enter Passowrd";
                        }else{
                          return null;
                        }
                        },

                     ),
                     const SizedBox(height: 10,),

                     Container(
                       width: MediaQuery.of(context).size.width,
                       child: ElevatedButton(
                         onPressed: (){
                           if(_formKey.currentState!.validate()){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>NavPage()));

                           }


                         }, child: const Text('lOGiN'),),
                     ),
                     SizedBox(height: 50,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Text("If you dont have account"),
                         ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_Screen()));

                         },
                             child: Text("Sign up"))
                       ],
                     )
                   ],
                 ),
               ),
             ),
           ),


        ),

      ),
    );
  }
}



