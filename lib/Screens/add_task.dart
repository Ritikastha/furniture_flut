// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class AddTaskScreenState extends StatefulWidget {
//   const AddTaskScreenState({super.key});

//   @override
//   State<AddTaskScreenState> createState() => AddTaskScreenStateState();
// }

// class AddTaskScreenStateState extends State<AddTaskScreenState> {
//   @override
//   TextEditingController id=new TextEditingController();
//   TextEditingController taskName=new TextEditingController();
//   DatabaseReference ref=FirebaseDatabase.instance.ref();
//   Future <void> saveTask() async{
//     try{
//     await ref.child("tasks").
//     child(id.text).
//     set({"taskName":taskName.text,"des":"New"});

//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task added")));}
//     catch(e){
//       print(e);
//     }




//   }
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(children: [TextFormField(
//         controller: id,
//       ),
//       TextFormField(
//         controller: taskName,
//       ),
//       ElevatedButton(onPressed: () {
//         saveTask();
        
//       },child: Text("ok"),
//       )],
//       )
//     );
//   }
// }