import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
        title: Text("Tentang KH.Masruhan Ihsan",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10, 0),
            child: Text(
              "KH. Masruhan Ihsan lahir pada tahun 1921, di Dusun Sendang Delik, Kelurahan Sumberejo, Kec.Mranggen, Kab.Demak. Beliau merupakan seorang Hafidz Al-Qur'an, Mendalami ilmu agama di salah satu Pesantren di Grobogan, Jateng, lalu Pesantren Tremas, Jawa Timur, kemudian berguru ke Kiai Sepuh di Banten. Semoga warisan Beliau menjadi amal jariyah yang pahalanya terus mengalir. Marilah sebagai pencari ilmu yang yang baik dan budiman membaca Al-Fatihah untuk beliau dan keluarganya",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
