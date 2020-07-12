import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class RisalahIstihadohPage extends StatefulWidget {
  @override
  _RisalahIstihadohPageState createState() => _RisalahIstihadohPageState();
}

class _RisalahIstihadohPageState extends State<RisalahIstihadohPage> {
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
        title: Text("Risalah Istihadoh", style: TextStyle(fontSize: 15)),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
