// import 'dart:html';

import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:sos/component/bottom_bar.dart';
import 'package:sos/screen/signin.dart';
import 'package:sos/screen/signupPhoneNumber.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),
      body: PageView(
        controller: controller,
        children: const <Widget>[
          Center(
            child: Text('First Page'),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
          Center(
            child: Text('Four Page'),
          ),
          Center(
            child: Text('Five Page'),
          ),
        ],
      ),
    );
  }
}
