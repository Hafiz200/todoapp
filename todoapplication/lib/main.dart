import 'package:flutter/material.dart';
import 'package:todoapplication/view/homescreen.dart';

Future<void> main() async {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
    );
  }
}
