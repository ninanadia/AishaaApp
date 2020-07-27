import 'package:aishaa_app/pages/jadwal_solat.dart';
import 'package:aishaa_app/pages/navbar.dart';
import 'package:aishaa_app/pages/video_kajian.dart';
import 'package:flutter/material.dart';
import 'package:aishaa_app/pages/splashscreen.dart';
import 'package:aishaa_app/pages/home.dart';
import 'package:aishaa_app/pages/risalah_haid.dart';
import 'package:aishaa_app/pages/risalah_nifas.dart';
import 'package:aishaa_app/pages/risalah_istihadoh.dart';
import 'package:aishaa_app/pages/more.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aishaa',
      home: SplashScreenPage(),
      routes: <String, WidgetBuilder>{
        '/navbar': (BuildContext context) => Navbar(),
        '/homepage': (BuildContext context) => HomePage(),
        '/risalahhaidpage': (BuildContext context) => RisalahHaidPage(),
        '/risalahnifaspage': (BuildContext context) => RisalahNifasPage(),
        '/risalahistihadohpage': (BuildContext context) =>
            RisalahIstihadohPage(),
        '/morepage': (BuildContext context) => MorePage(),
        '/videokajianpage': (BuildContext context)=> VideoKajianPage(),
        '/jadwalshalat': (BuildContext context)=> JadwalSolatPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFFF26968),
        primaryColorLight: Color(0xFFFFB6B9),
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.white),
        primaryTextTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        fontFamily: 'Montserrat',
      ),
    );
  }
}
