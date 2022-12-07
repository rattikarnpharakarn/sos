import 'package:flutter/material.dart';
import 'package:sos/screen/home.dart';
import 'package:sos/screen/index.dart';
import 'screen/signup.dart';

import 'package:sos/src/screen/index.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SosApp',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Index(),
      // home: Signup(),
    );
  }
}
