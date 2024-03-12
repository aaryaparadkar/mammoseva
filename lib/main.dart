import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      home: Intro(),
           color: Color.fromARGB(255, 255, 195, 215)
    );
  }
}