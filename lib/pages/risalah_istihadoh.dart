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
          title: Text("Risalah Istihadoh", style: TextStyle(fontSize: 16)),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    child: Text(
                      "Pilih Topik Risalahmu",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat-Bold',
                          fontWeight: FontWeight.w800,
                          fontSize: 16.0),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.pinkDustyColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Muqoddimah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.purpleYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Asal-Usul Haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.dustyYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Hikmah Haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.pinkYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Nama-Nama Haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.purpleYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Usia Haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.pinkRoseColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "20 hal \n mengenai perempuan haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.pinkDustyColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Masa Haid dan Sucinya",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.orangeYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Macam-macam warna darah haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.pinkRoseColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Cara Mengetahui Berhenti Tidaknya Haid",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.dustyYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Tanbih (Peringatan)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      //margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      width: 141,
                      height: 90,
                      decoration: BoxDecoration(
                          color: TemaApp.orangeYoungColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            )
                          ]),
                      child: Text(
                        "Hal-hal yang boleh dan makruh",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: TemaApp.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
              ],
            )
          ],
        ));
  }
}
