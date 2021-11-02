import 'package:flutter/material.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF2196F3)),
        home: Scaffold(
            body: Center(
                child: Text(
          'Dashboard Page',
          style: TextStyle(color: Colors.white),
        ))));
  }
}
