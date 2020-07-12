import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class JadwalSolatPage extends StatefulWidget {
  @override
  _JadwalSolatPageState createState() => _JadwalSolatPageState();
}

class _JadwalSolatPageState extends State<JadwalSolatPage> {
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
        title: Text("Jadwal Solat", style: TextStyle(fontSize: 15)),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
