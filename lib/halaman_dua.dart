import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanDua extends StatefulWidget {
  @override
  State createState() {
    return _HalamanDuaState();
  }
}

class _HalamanDuaState extends State {
  DateTime selectedDate = DateTime.now();
  TextEditingController _textEditingController = TextEditingController();
  DateFormat formatter = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF44336)),
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Column(children: [
                ElevatedButton(
                    child: Text('Date Picker'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, onPrimary: Colors.red),
                    onPressed: () {
                      _selectDate(context);
                    }),
                SizedBox(height: 10),
                Text(
                    'Date Value : ' +
                        "${formatter.format(selectedDate)}".split(' ')[0],
                    style: TextStyle(color: Colors.white))
              ])
            ]))));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
