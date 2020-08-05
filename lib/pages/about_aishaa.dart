import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class AboutAishaa extends StatefulWidget {
  @override
  _AboutAishaaState createState() => _AboutAishaaState();
}

class _AboutAishaaState extends State<AboutAishaa> {
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
          title: Text("Tentang Aishaa",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10, 0),
              child: Text(
                "Aishaa adalah aplikasi yang dibangun sebagai sarana belajar fikih perempuan haid, nifas dan istihadoh secara ringkas berdasarkan kitab Risalah Al-Mahid Karangan KH.Masruhan Ihsan",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ));
  }
}
