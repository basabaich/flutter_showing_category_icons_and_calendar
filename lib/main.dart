//
//file: main.dart
//

import 'package:flutter/material.dart';
import './expenses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expenses(),
      //
      //
      //NOTE IMPORTANT: As "Expenses()" function / class is called from
      //"MyApp()", so the called function / class (i.e. "Expenses()"),
      //must return with a "Scaffold" widget in its class (after the
      //BuildContext entry). Otherwise the app will not work.
      //
      //
    ); //MaterialApp
  }
}
