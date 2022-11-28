import 'package:flutter/material.dart';
import 'screen/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SosApps',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}
