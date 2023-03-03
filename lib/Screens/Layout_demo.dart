// import 'package:flutter/material.dart';

// class layoutdemo extends StatelessWidget {
//   layoutdemo({Key? key}) : super(key: key);
//   List<String> dummydata=List.generate(100, (index) => index.toString());


//   @override
//   Widget build(BuildContext context) {
//     return StackViewDemo();

//   }
// }

// class ListViewBuilderDemo extends StatelessWidget {
//   ListViewBuilderDemo({Key? key}) : super(key: key);
//   List<String> dummydata=List.generate(100, (index) => index.toString());
  

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: dummydata.length,
//         itemBuilder: (context,index){
//         return Text(dummydata[index]);
//         });
//   }
// }

// class GridViewDemo extends StatelessWidget {
//    GridViewDemo({Key? key}) : super(key: key);
//   List<String> dummydata=List.generate(100, (index) => index.toString());

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(crossAxisCount: 5,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 5,
//         children:dummydata.map((e) =>
//         Container(
//           color:Colors.red,
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           child: Text(e))).toList()

//             ,);
//   }
// }

// class StackViewDemo extends StatelessWidget {
//   const StackViewDemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(height: 100,width: 200,color: Colors.lightBlueAccent,),
//         Positioned(
//             bottom: 0,
//             right: 0,
//             child: Container(height: 100,width: 100,color:Colors.lightGreenAccent,)),
//         Positioned(child:  Container(height: 100,width: 100,color:Colors.lightGreenAccent,))
//       ],
//     );
//   }
// }


