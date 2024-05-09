import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/pages/InfoDisplay/InfoDisplay.dart';
import 'pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InfoDisplay(),
        color: Color.fromARGB(255, 255, 195, 215));
  }
}
