import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class RisalahHaidPage extends StatefulWidget {
  @override
  _RisalahHaidPageState createState() => _RisalahHaidPageState();
}

class _RisalahHaidPageState extends State<RisalahHaidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: LinearGradient(
          colors: [
            TemaApp.pinkRoseColor,
            TemaApp.pinkYoungColor,
          ],
          tileMode: TileMode.clamp,
        ),
        title: Text("Risalah Haid", style: TextStyle(fontSize: 15)),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
