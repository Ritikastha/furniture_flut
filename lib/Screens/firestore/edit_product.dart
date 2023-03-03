// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AddproductScreen extends StatefulWidget {
//   const AddproductScreen({Key? key}) : super(key: key);

//   @override
//   State<AddproductScreen> createState() => _AddproductScreenState();
// }

// class _AddproductScreenState extends State<AddproductScreen> {
//   TextEditingController productName=new TextEditingController();
//   TextEditingController productPrice=new TextEditingController();
//   Future<void>addProduct()async{
//     FirebaseFirestore db=FirebaseFirestore.instance;
//     final data={

//       "productName": productName.text,
//       "productPrice": productPrice.text,
//     };
//     final args=ModalRoute.of(context)!.settings.arguments;

//     db.collection("products").doc(args.toString()).set(data).then((value) {

//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content:Text("Product Added"))
//       );

//     });

//   }

//   @override
//   void initState(){
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

//       final args=ModalRoute.of(context)!.settings.arguments;
//       print(args);
//       FirebaseFirestore db=FirebaseFirestore.instance;

//           db.collection("products")
//           .doc(args.toString())
//           .get()
//           .then((data) {


//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Column(children: [
//         TextFormField(controller: productName,),
//         TextFormField(controller: productPrice,),
//         ElevatedButton(onPressed: (() {
//           addProduct();
//         }), child: Text("Save"))

//       ],)),
//     );
//   }
// }


