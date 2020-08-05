import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:aishaa_app/utils/colors.dart';

class RisalahNifasDetail extends StatefulWidget {
  final DocumentSnapshot post;

  RisalahNifasDetail({this.post});
  @override
  _RisalahNifasDetailState createState() => _RisalahNifasDetailState();
}

class _RisalahNifasDetailState extends State<RisalahNifasDetail> {
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
          widget.post.data["title"],
          style:
              TextStyle(fontFamily: 'montserrat', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.post.data["image"],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    widget.post.data["content"].replaceAll("\\n", "\t"),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontSize: 19,
                        height: 2,
                        letterSpacing: 1),
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.post.data["image2"],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.post.data["image3"],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.post.data["image4"],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
