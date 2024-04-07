import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teacher_management/inbox.dart';
import 'package:teacher_management/screens/studentsList.dart';
import 'package:teacher_management/screens/whiteNotice.dart';
import 'package:teacher_management/uploadAssignment.dart';

import 'loginScree.dart';

class TeachersMain extends StatefulWidget {
  const TeachersMain({super.key});

  @override
  State<TeachersMain> createState() => _TeachersMainState();
}

class _TeachersMainState extends State<TeachersMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
    child:  SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      /// Header of the Drawer
      Material(
      color: Colors.blueAccent,
      child: InkWell(
        onTap: (){
          /// Close Navigation drawer before
          Navigator.pop(context);

        },
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              bottom: 24
          ),
          child:  Column(
            children: [
              CircleAvatar(
                child:Image.asset('images/chatAppNine.png') ,
                radius: 52,


              ),
              SizedBox(height: 12,),
              Text('Rafaqat Ali',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white
                ),),
              Text('mrdeveloper1437@gmail.com',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                ),),

            ],
          ),
        ),
      ),
          ),

        Column(
            children:  [
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpladAssignment()));
                },
                title: Text('Upload Assginments',),),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpladAssignment()));
                },
                title: Text('Assignments List'),),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudnetsList()));
                },
                title: Text('Students List'),),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>White_Notice()));
                },
                title: Text('White Notice'),),
              const Divider(color: Colors.black45,),

              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InboxScreen()));
                },
                title: Text('Inbox'),),

            ]
        )
          ]
          )
    )






    ),
    appBar: AppBar(
    iconTheme: IconThemeData(color: Colors.white), //add this line here
    title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    const Text('Teachers Management',style: TextStyle(color: Colors.white,fontSize: 18),),
    Container(
    height: 30,
    child: ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
    }, child: const Text('Sign In')),
    )
    ],
    ),
    centerTitle: true,
    backgroundColor:Colors.deepPurple.shade800 ,
    ),
    backgroundColor: Colors.cyan.shade900,
    extendBody: true,


    body:   DecoratedBox(
      // BoxDecoration takes the image
      decoration: const BoxDecoration(
        // Image set to background of the body
        image: DecorationImage(
            image: AssetImage("images/mainBg.jpg"), fit: BoxFit.cover),
      ),
      child: Center(
           child: Column(
               children: [
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
    const SizedBox(width: 20.0, height: 100.0),
                     const SizedBox(width: 20.0, height: 100.0),
                     DefaultTextStyle(
                       style: const TextStyle(
                         fontSize: 40.0,
                         fontFamily: 'Horizon',
    ),
    child: AnimatedTextKit(
        animatedTexts: [
    RotateAnimatedText('TEACHERS'),
    RotateAnimatedText('MANAGEMENT'),
    RotateAnimatedText('SYSTEM'),
    ],
    onTap: () {
    print("Tap Event");
    },
    ),
    ),
    ],
    )

    ],
    ),
    ),

    )
    );
  }
}
