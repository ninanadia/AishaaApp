import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class RisalahNifasPage extends StatefulWidget {
  @override
  _RisalahNifasPageState createState() => _RisalahNifasPageState();
}

class _RisalahNifasPageState extends State<RisalahNifasPage> {
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
        title: Text("Risalah Nifas", style: TextStyle(fontSize: 15)),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
