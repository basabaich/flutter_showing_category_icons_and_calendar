//
//file: expenses.dart
//

import 'package:flutter/material.dart';
import 'package:practice4_icon_event/new_expense.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});
  @override

//
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ), //AppBar
      body: const NewExpense(),
    ); //Scaffold
  }
}
