// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DatabaseScreen extends StatefulWidget {
//   const DatabaseScreen({super.key});

//   @override
//   State<DatabaseScreen> createState() => _DatabaseScreenState();
// }

// class _DatabaseScreenState extends State<DatabaseScreen> {
//   DatabaseReference ref=FirebaseDatabase.instance.ref();
//   var data=[];
//   @override
//   void initState() {
//     ref.child("tasks").onValue.listen((event) {
//       var snapshot = event.snapshot;
//       setState(() {
//         data = snapshot.children.toList();
//       });
//     });
//     super.initState();
//   }

//   void deleteTask(String id){
//     showDialog(context: context,
//         builder: (BuildContext context)=>
//             AlertDialog(
//               title: Text("Are u sure u want to deleye"),
//               actions: [
//                 ElevatedButton(onPressed: (){
//                   Navigator.of(context).pop();

//                 },
//                     child: Text("Delete"),),

//                 ElevatedButton(onPressed: (){
//                   Navigator.of(context).pop();

//                 },
//                   child: Text("cancel"),),


//               ],
//             )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Navigator.of(context).pushNamed("/add-task");

//         },
//         child: Icon(Icons.add),
//         ),

//         body: ListView(children: [
//           ...data.map((e) => ListTile(
//             title: Text(
//               e.value["taskName"],
//               style: TextStyle(fontSize: 30),
//             ),
//             trailing: Wrap(
//               children: [
//                 InkWell(
//                   onTap: (){
//                     deleteTask(e.key);

//                   },
//                   child: Icon(Icons.delete),
//                 ),
//                 InkWell(
//                 onTap: (){
//                     Navigator.of(context).pushNamed("/edit-task",arguments: e.key);
//                 },
//                 child: Icon(Icons.edit),)
//               ],
//             ),
//           ))
          
        

//         ],),
//     );
//   }
// }