// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';


// class Edittask extends StatefulWidget {
//   const Edittask({Key? key}) : super(key: key);

//   @override
//   State<Edittask> createState() => _EdittaskState();
// }

// class _EdittaskState extends State<Edittask> {
//   @override
//   TextEditingController id=new TextEditingController();
//   TextEditingController taskName=new TextEditingController();

//   Future <void> editTask() async{}

//   @override
//   void initState(){
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

//       final args=ModalRoute.of(context)!.settings.arguments;
//       print(args);
//       DatabaseReference ref=FirebaseDatabase.instance.ref();
//       ref
//       .child("tasks")
//       .child(args.toString())
//       .get()
//       .then((data) {
//         var parseData=data.value as Map;
//         id.text=args.toString();
//         taskName.text=parseData["taskName"];

//       });
//     });
//     super.initState();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:Column(children: [TextFormField(
//           controller: id,
//         ),
//           TextFormField(
//             controller: taskName,
//           ),
//           ElevatedButton(onPressed: () {
//             editTask();

//           },child: Text("ok"),
//           )],
//         )
//     );
//   }
// }
