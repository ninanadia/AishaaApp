import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'risalah_istihadoh_detail.dart';

class RisalahIstihadohPage extends StatefulWidget {
  @override
  _RisalahIstihadohPageState createState() => _RisalahIstihadohPageState();
}

class _RisalahIstihadohPageState extends State<RisalahIstihadohPage> {
  Future getPost() async {
    var firestore = Firestore.instance;

    QuerySnapshot risalahIstihadoh =
        await firestore.collection("risalahistihadhoh").getDocuments();

    return risalahIstihadoh.documents;
  }

  navigateToDetail(DocumentSnapshot post) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RisalahIstihadohDetail(
                  post: post,
                )));
  }

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
          title: Text("Risalah Istihadhoh",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
            child: FutureBuilder(
                future: getPost(),
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: Text("Loading..."));
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  navigateToDetail(snapshot.data[index]),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: TemaApp.pinkDustyColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  title: Text(
                                    snapshot.data[index].data["title"],
                                    style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 18,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  }
                })));
  }
}
