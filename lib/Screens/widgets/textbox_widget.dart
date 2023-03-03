import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextboxWidget extends StatefulWidget {
  const TextboxWidget({super.key});

  @override
  State<TextboxWidget> createState() => _TextboxWidgetState();
}

class _TextboxWidgetState extends State<TextboxWidget> {
  String value="";
  TextEditingController inputController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [TextFormField(controller: inputController,),
      Text(value.toString()),
      ElevatedButton(onPressed: (() {
        setState((() {
          value=inputController.text;
        }));
      }), child: Text("save"))

      ]),
    );
  }
}