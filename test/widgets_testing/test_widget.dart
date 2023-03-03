import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_class/Screens/widgets/make_rs_text.dart';
import 'package:flutter_class/Screens/widgets/textbox_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  testWidgets("Testing text widget", (tester) async{
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MakeRsText(
            price: '100',
          ),
        ),
      )
    );

    final textFinder=find.text("Rs. 100");
    expect(textFinder, findsOneWidget);
    
    testWidgets("Test input widget", (tester) async{
      await tester.pumpWidget(
        MaterialApp(
          home: Material(

            child: TextboxWidget(),
          ),
        )
      );
      await tester.enterText(find.byType(TextFormField),"hello");
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      final textFinder=find.text("hello");
      expect(textFinder, findsOneWidget);

    });

  });
}