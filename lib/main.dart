import 'package:flutter/material.dart';
import 'package:products/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Times New Roman"),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
    );
  }
}
