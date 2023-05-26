//
//file: new_expense.dart
//

import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
//
//

  //
  //
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
//
//
//
//
  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    //Show date picker is an inbuilt flutter function. This function is used
    //here with "await" & "async" commands as user can select a future date
    //from the calender and this app is supposed to store it inside a
    //variable (Note: storing procedure of the selected date is not used
    //in this project)
  }
  //
  //

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: TextEditingController(),
          decoration: const InputDecoration(label: Text('Title  : ')),
        ), //TextField
        Row(
          children: [
            Expanded(
              //As "TextField" have problem in rendering within Rows , so
              //we refactor this "TextField" with widget "Expanded"
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  label: Text('Amount in INR :'),
                ), //InputDecoration
                keyboardType: TextInputType.number,
                maxLength: 15,
              ), //TextField
            ), //Expanded
            const SizedBox(
              width: 10,
            ), //SizedBox
            //
            //Below lines show the icon calendar
            //
            IconButton(
              onPressed: _presentDatePicker,
              icon: const Icon(Icons.calendar_month),
            ), //IconButton
            //
            //The above is the calendar code lines
            //
          ],
        ), //Row
        Row(
          children: [
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
            const SizedBox(
              width: 50.0,
            ), //SizedBox
            ElevatedButton(onPressed: () {}, child: const Text('Save'))
          ],
        ) //Row
      ],
    ); //Column
  }
}
