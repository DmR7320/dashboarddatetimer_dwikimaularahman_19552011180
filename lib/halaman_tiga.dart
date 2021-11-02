import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanTiga extends StatefulWidget {
  @override
  State createState() {
    return _HalamanTigaState();
  }
}

class _HalamanTigaState extends State {
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController _textEditingController = TextEditingController();
  DateFormat formatter = DateFormat('hh:mm A');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF4CAF50)),
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Column(children: [
                ElevatedButton(
                    child: Text('Date Picker'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, onPrimary: Colors.green),
                    onPressed: () {
                      _selectTime(context);
                    }),
                SizedBox(height: 10),
                Text(
                    'Time Value : ' +
                        "${selectedTime.format(context)}".split(' ')[0],
                    style: TextStyle(color: Colors.white))
              ])
            ]))));
  }

  Future<void> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: true,
            ),
            child: child!,
          );
        });
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }
}

// Maaf pak, jika sedang cek tugas ini (Saya bingung menampilkan AM di dashboard waktunya. tidak muncul untuk AM / PM nya)