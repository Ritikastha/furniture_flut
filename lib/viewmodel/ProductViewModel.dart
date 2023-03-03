// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_class/models/product_model.dart';
// import 'package:flutter_class/repositories/product_repostiory.dart';

// class ProductViewModel with ChangeNotifier{
//   ProductRepository _productRepository=ProductRepository();
//   Stream <QuerySnapshot<ProductModel>>?_products;
//   Stream <QuerySnapshot<ProductModel>>? get products => _products;

//   Future <void> getProducts() async{
//     var response=_productRepository.getData();
//     _products=response;
//     notifyListeners();
//   }

//   Future<void> deleteProduct (String id) async{
//     await _productRepository.deleteProduct(id);
//     notifyListeners();
//   }
// }