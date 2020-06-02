import 'package:Attendence_App/attenancecalculator.dart';
import 'package:Attendence_App/pages/AttendanceHomePage.dart';
import 'package:Attendence_App/pages/AttendencePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      home: AttendanceHome(sem:"S4",batch: "CSE",),//S4 and Cse just for testing
    );
  }
}
