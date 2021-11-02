import 'package:dashboarddatetimer_dwikimaularahman_19552011180/rumah.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppSaya());

class AppSaya extends StatelessWidget {
  const AppSaya({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flutter App',
      home: Home(),
    );
  }
}
