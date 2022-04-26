import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'languageScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>LangPage())));
    /*this is the second screen.it will launched after splash screen get terminated,HomeScreen()*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Discover Their World',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
            ),),
            SpinKitSpinningLines(
              color: Colors.blue.shade600,
              size: 50.0,
            ),
          ],
        )

      ),
    );
  }
}