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
        title: Text("Lainnya", style: TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
          child: new Column(children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(5),
        ),
        new Container(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(children: <Widget>[
          Row(
            children: <Widget>[
            Icon(
              Icons.info,
              color: TemaApp.greyColor,
              size: 25,
            ),
            Text("  Tentang Aishaa", style: TextStyle(fontSize: 16),)
          ]),
          SizedBox(height:20),
          Row(
            children: <Widget>[
            Icon(
              Icons.developer_mode,
              color: TemaApp.greyColor,
              size: 25,
            ),
            Text("  Tentang Kami", style: TextStyle(fontSize: 16),)
          ]),
           SizedBox(height:20),
          Row(
            children: <Widget>[
            Icon(
              Icons.library_books,
              color: TemaApp.greyColor,
              size: 25,
            ),
            Text("  Informasi Sumber", style: TextStyle(fontSize: 16),)
          ]),
           SizedBox(height:20),
          Row(
            children: <Widget>[
            Icon(
              Icons.star,
              color: TemaApp.greyColor,
              size: 25,
            ),
            Text("  Beri Rating", style: TextStyle(fontSize: 16),)
          ]),
        ]))
      ])),
    );
  }
}
