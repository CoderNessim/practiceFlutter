import 'package:flutter/material.dart';
import 'package:practice/pages/codeninja.dart';
import 'package:practice/pages/home.dart';
import 'package:practice/pages/newProj.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewProj(),
    );
  }
}
