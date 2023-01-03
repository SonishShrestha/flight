import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 200, 50, 80),
            child: SizedBox(
              height: 170.0,
              width: 170.0,
              child: Image.asset('assets/logo.jpg'),
            ),
          ),
          Text(
            'App Name',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Ut labore et dolore roipi mana aliqua. Enim\n adeop minim veeniam nostruklad',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.blue),
          )
        ],
      ),
    ));
  }
}
