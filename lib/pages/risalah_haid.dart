import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'risalah_haid_detail.dart';

class RisalahHaidPage extends StatefulWidget {
  @override
  _RisalahHaidPageState createState() => _RisalahHaidPageState();
}

class _RisalahHaidPageState extends State<RisalahHaidPage> {
  Future getPost() async {
    var firestore = Firestore.instance;

    QuerySnapshot risalahHaid =
        await firestore.collection("risalah").getDocuments();

    return risalahHaid.documents;
  }

  navigateToDetail(DocumentSnapshot post) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RisalahHaidDetail(
                  post: post,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
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
