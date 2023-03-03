
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class InputDemo extends StatefulWidget {
//   const InputDemo({Key? key}) : super(key: key);

//   @override
//   State<InputDemo> createState() => _InputDemoState();
// }

// class _InputDemoState extends State<InputDemo> {
//   TextEditingController num1 = new TextEditingController();
//   TextEditingController num2 = new TextEditingController();
//   TextEditingController date = new TextEditingController();
//   String result = "";
//   String operation = "";
//   bool checkBox = false;
//   List<String> selection = ["Nepal", "India", "China"];
//   String selectedItem = "";
//   @override
//   void initState() {
//     setState(() {
//       selectedItem = selection[0];
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           child: DropdownButton(
//             value: selectedItem,
//             items: selection.map((value) {
//               return DropdownMenuItem(
//                 value: value.toString(),
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (value) {
//               setState(() {
//                 selectedItem = value.toString();
//               });
//             },
//           ),
//         ),
//         TextFormField(
//           controller: date,
//           readOnly: true,
//           onTap: () async {
//             DateTime? dateInput = await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(1990),
//                 lastDate: DateTime(2100));
//             if (dateInput != null) {
//               String formattedDate = DateFormat('yyyy-dd-MM').format(dateInput);
//               setState(() {
//                 date.text = formattedDate;
//               });
//             }
//           },
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextFormField(
//                   controller: num1,
//                 ),
//               ),
//             ),
//             Expanded(
//                 child: Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextFormField(
//                     controller: num2,
//                   ),
//                 ))
//           ],
//         ),
//         RadioListTile(
//             value: "add",
//             groupValue: operation,
//             title: Text("ADDITION"),
//             onChanged: (String? value) {
//               // print(value);
//               setState(() {
//                 operation = value.toString();
//               });
//             }),
//         RadioListTile(
//             value: "sub",
//             groupValue: operation,
//             title: Text("SUBTRACTION"),
//             onChanged: (String? value) {
//               // print(value);
//               setState(() {
//                 operation = value.toString();
//               });
//             }),
//         CheckboxListTile(
//             title: Text("Checkbox"),
//             value: checkBox,
//             onChanged: (bool? value) {
//               print(value);
//               setState(() {
//                 checkBox = !checkBox;
//               });
//             }),
//         ElevatedButton(
//           onPressed: () {
//             // print(name.text);
//             print(operation);
//             if (operation == "add") {
//               setState(() {
//                 result =
//                     (int.parse(num1.text) + int.parse(num2.text)).toString();
//               });
//             }
//             if (operation == "sub") {
//               setState(() {
//                 result =
//                     (int.parse(num1.text) + int.parse(num2.text)).toString();
//               });
//             }
//           },
//           child: Text("OutPut"),
//         ),
//         Text(result),
//         InkWell(
//           onTap: () {
//             print("RK me");
//           },
//           child: Container(
//             height: 20,
//             width: 100,
//             decoration: BoxDecoration(color: Colors.black26),
//             child: Text("Dj khalid"),
//           ),
//         ),
//         SizedBox(height: 10),
//         GestureDetector(
//           onTap: () {
//             print("Single tap");
//           },
//           onDoubleTap: () {
//             print("Double tap");
//           },
//           child: Container(
//             height: 20,
//             width: 100,
//             decoration: BoxDecoration(color: Colors.amber),
//             child: Text("Click here"),
//           ),
//         )
//       ],
//     );
//   }
// }