import 'package:flutter/material.dart';
import 'package:want_u/screens/index.dart';
import 'package:want_u/screens/open.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Want_U',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const OpenPage(),
    );
  }
}
