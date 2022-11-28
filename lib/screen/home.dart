import 'package:flutter/material.dart';
import 'package:sos/screen/signin.dart';
import 'package:sos/screen/signupPhoneNumber.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(248, 228, 44, 44),
      backgroundColor: const Color.fromARGB(255, 248, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
              margin: const EdgeInsets.all(15),
              child: const Text(
                "SOS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 102,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              margin: const EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  labelStyle: TextStyle(color: Colors.white),
                  // helperText: 'Ex. 0812345678',
                  // helperStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye), onPressed: null),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 160, 10, 0),
              child: SizedBox(
                width: 312.48,
                height: 63.4,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.29),
                          side: const BorderSide(
                              width: 3, color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Signin();
                    }));
                  },
                  child: const Text("Login",
                      style: TextStyle(color: Colors.black, fontSize: 24)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: SizedBox(
                width: 312.48,
                height: 63.4,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.29),
                          side: const BorderSide(
                              width: 3, color: Colors.black)))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignupPhoneNumber();
                    }));
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
