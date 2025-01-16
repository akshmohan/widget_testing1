// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing1/home_page.dart';

void main() {
  testWidgets("Given counter is 0 When I increment counter Then counter is 1",
      (tester) async {
    await tester.pumpWidget(
    const  MaterialApp(
        home: MyHomePage(
          title: "Counter App",
        ),
      ),
    );

  final ctr =  find.text("0");
  expect(ctr, findsOneWidget);

  final ctr2 = find.text("1");
  expect(ctr2, findsNothing);


final incrementBtn =   find.byType(FloatingActionButton);

  await tester.tap(incrementBtn);

 await tester.pump();  

  final ctr3 = find.text("1");
  expect(ctr3, findsOneWidget);

  final ctr4 = find.text("0");
  expect(ctr4, findsNothing);

  expect(find.byType(AppBar), findsOneWidget);
  });
}
