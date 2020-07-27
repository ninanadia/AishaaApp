import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed('/navbar'));
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: TemaApp.pinkRoseColor),
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Image.asset(
                  "./assets/images/Aishaa.png",
                  width: 200.0,
                  height: 100.0,
                )
              ]))
        ],
      ),
    );
  }
}
