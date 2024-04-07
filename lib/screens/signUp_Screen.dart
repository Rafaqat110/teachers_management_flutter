
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginScree.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(

          color: Colors.indigo,
          child:  Center(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Text("Create an Account",style: TextStyle(color: Colors.white,fontSize: 30),),
                  const SizedBox(height: 20,),

                   TextFormField(style:TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Name',labelStyle: TextStyle(color: Colors.white)),
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
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Password',suffix: Icon(Icons.remove_red_eye_sharp)),
                     validator: (value){
                       if(value!.isEmpty){
                         return "Enter Passowrd";
                       }else{
                         return null;
                       }
                     },

                   ),
                  const SizedBox(height: 50,),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));


                        }

                      }, child: const Text('Sign Up'),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
