import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MakeRsText extends StatefulWidget {
  MakeRsText({Key? key,required this.price}):super(key: key);
  String price;

  @override
  State<MakeRsText> createState() => _MakeRsText();
}

class _MakeRsText extends State<MakeRsText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(""),
    );
  }
}