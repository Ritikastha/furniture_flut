// import 'package:flutter/material.dart';
// import 'package:flutter_class/Screens/page2.dart';
// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   State<Page1> createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(title: Text("Page 1"),),
//       body:Column(
//         children: [
//           Container(child: Text("Page 1 content"),),
//           ElevatedButton(onPressed: (){
//             Navigator.of(context).pushReplacement(
//               MaterialPageRoute (
//                 builder: (BuildContext context) => page2(),
//               ),
//             );
//           }, child:Text("change"))
//         ],
//       )
//     );
//   }
// }
