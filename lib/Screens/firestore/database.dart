

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_class/Screens/widgets/make_rs_text.dart';
// import 'package:flutter_class/models/product_model.dart';
// import 'package:flutter_class/repositories/product_repostiory.dart';
// import 'package:flutter_class/services/notification_screen.dart';
// import 'package:flutter_class/viewmodel/ProductViewModel.dart';
// import 'package:provider/provider.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {

//   FirebaseFirestore db=FirebaseFirestore.instance;
//   void deleteProduct(String id){
//     FirebaseFirestore db=FirebaseFirestore.instance;

//     showDialog(context: context,
//         builder: (BuildContext context)=>
//             AlertDialog(
//               title: Text("Are u sure u want to deleye"),
//               actions: [
//                 ElevatedButton(onPressed: (){
//                   _productViewModel.deleteProduct(id).
//                       then((value)=>
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Product deleted"))
//                       )
//                   );
//                   Navigator.of(context).pop();

//                 },
//                   child: Text("Delete"),),

//                 ElevatedButton(onPressed: (){
//                   Navigator.of(context).pop();

//                 },
//                   child: Text("cancel"),),


//               ],
//             )
//     );
//   }

// // ProductRepository _productRepository=ProductRepository();
// late ProductViewModel _productViewModel;
// @override
//   void initState() {
//     // TODO: implement initState
//     _productViewModel=Provider.of<ProductViewModel>(context,
//     listen: false);
//     // _productViewModel.getProducts();
//     FirebaseMessaging.onMessage.listen((message) {
//       if (message.notification != null) {
//         print(message.notification!.body);
//         print(message.notification!.title);
//       }


//       NotificationService.displayFcm(notification: message.notification!,buildContext: context);
//     });
//     //when the app is in background but opened and user taps
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print(message);
//     });

//      FirebaseMessaging.instance.getInitialMessage().then((message) {
//       if (message != null) {
//         print(message);
//       }
//     });
//     FirebaseMessaging.instance.getToken().then((value) {
//       String? token = value;
//       print("fcm: " + token.toString());

//       // I/flutter (0): fcm: eOIt5z4dSpm3Y7UESKUBEx...my8

//       // it shoud print token like this in your debug console, this  is unique to each devices
//     });


    
//     super.initState();
//   }


//   @override
//   Widget build(BuildContext context) {
//     var products=context.watch<ProductViewModel>().products;
//     return Scaffold(
//       appBar: AppBar(actions: [IconButton(onPressed: (){
//         NotificationService.display("this is title", "tjis is body", 
//         "/add-product",context);
//       }, icon: Icon(Icons.notification_important))],)
      
      
//       ,
//       body: StreamBuilder(
//         stream: products,

//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<ProductModel>> snapshot) {
//           if(snapshot.hasError) return Text("Error");
//           return Container(

//           );
//           return ListView(
//             children: [
            
//             MakeRsText(price: "100"),

//               ...snapshot.data!.docs.map((document){
//                 ProductModel product = document.data();
//                 // ProductModel product=ProductModel.fromJson(document.data());
//               return ListTile(
//                 title: Text(
//                   product.productName,
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 trailing: Wrap(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         deleteProduct(document.id);

//                       },
//                       child: Icon(Icons.delete),
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.of(context).pushNamed("/edit-products",arguments: document.id);
//                       },
//                       child: Icon(Icons.edit),)
//                   ],
//                 ),
//               );},
//               )
//             ],
      
//           );
        
//         }
//       ),
//     );
//   }
// }