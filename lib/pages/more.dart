import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
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
          title: Text("Lainnya",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: new ListView(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 0, 0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/aboutaishaa');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.info,
                            color: TemaApp.greyColor,
                          ),
                          Text(
                            "\t\tTentang Aishaa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: TemaApp.greyColor,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height:20),
                      GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/aboutus');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: TemaApp.greyColor,
                          ),
                          Text(
                            "\t\tTentang KH.Masruhan Ihsan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: TemaApp.greyColor,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height:20),
                      GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/infosumber');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.library_books,
                            color: TemaApp.greyColor,
                          ),
                          Text(
                            "\t\tInformasi Sumber",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: TemaApp.greyColor,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height:20),
                ],
              )
            ]));
  }
}
