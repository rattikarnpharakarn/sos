import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          // toolbarHeight: 100,
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(
            color: Colors.black, // <-- SEE HERE
          ),
          leading: const BackButton(color: Colors.black),
          titleSpacing: 0,
          backgroundColor: const Color.fromARGB(255, 248, 0, 0),
          elevation: 10,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 29.8,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: const Text(
                          'Please enter your Info ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(360),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(360),
                      child: Image.asset(
                        "assets/images/Image1.jpeg",
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
