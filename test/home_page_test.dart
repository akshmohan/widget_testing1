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
  });
}
