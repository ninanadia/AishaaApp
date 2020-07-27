import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:aishaa_app/widget/risalah.dart';
import 'package:flutter/rendering.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:aishaa_app/widget/video.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text(
          "Beranda",
          style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[backgroundHeader(), welcomeBar()],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 110, 7, 0),
              child: Text(
                "Kategori Risalah",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat-Bold',
                    fontWeight: FontWeight.w800,
                    fontSize: 15.0),
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(
                top: 2.0,
                bottom: 5.0,
              ),
              child: RisalahMenuPage(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 7, 0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Video Kajian",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'MontserratBold',
                          fontWeight: FontWeight.w800,
                          fontSize: 15.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/videokajianpage');
                      },
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat-Light',
                            color: TemaApp.pinkRoseColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: VideoMenu(),
            ),
          ],
        ),
      );
  }
}

Widget welcomeBar() {
  return Positioned(
      top: 80,
      left: 20,
      right: 20,
      child: Container(
        width: 170,
        height: 140,
        decoration: BoxDecoration(
            color: TemaApp.whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(3.0, 3.0),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          //karena ada dua objek jadi pake row
          child: Row(
            //main alignmentnya spacearound supaya kedua objek ada jarak yang sesuai
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Text(
                    "Selamat datang di aplikasi \n Aishaa, semoga ilmu yang \n telah tersedia dapat \n bermanfaat untukmu ya :)",
                    style: TextStyle(
                        fontSize: 15,
                        color: TemaApp.pinkRoseColor,
                        fontFamily: 'Montserrat-SemiBold')),
              ]),
              Column(
                children: <Widget>[
                  Image.asset(
                    "./assets/images/human.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
}

Widget backgroundHeader() {
  return Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            TemaApp.pinkRoseColor,
            TemaApp.pinkYoungColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //bagian menampilkan text
              Text(
                "Assalamu'alaikum,",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat-SemiBold'),
              ),
              Text("Ukhti",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-SemiBold'))
            ]),
      ));
}