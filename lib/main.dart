import 'package:flutter/material.dart';
import 'package:flutter_appproyect/pages/quiz_page.dart';
import 'package:flutter_appproyect/core/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: Text("Beast Creator"),
      ),
      body: const QuizPage(),
    ),
  );
  }
}
