import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class InformasiSumber extends StatefulWidget {
  @override
  _InformasiSumberState createState() => _InformasiSumberState();
}

class _InformasiSumberState extends State<InformasiSumber> {
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
        title: Text("Informasi Sumber",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10, 0),
            child: Text(
              "Kitab Risalah Al-Mahid Karangan KH.Masruhan Ihsan,\n Ridlwan Hakim.2017.Panduan Bagi Perempuan Muslimah dalam Memahami Darah Haid dan Nifas.Jawa Timur:Pustaka Tebu Ireng",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
