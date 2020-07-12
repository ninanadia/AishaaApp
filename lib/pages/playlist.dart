import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Playlist extends StatefulWidget {
  Playlist({this.title, this.url});
  final String title;
  final String url;
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  Future<List> getData() async {
    final response = await http.get(widget.url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? new ListVideo(
                    list: snapshot.data,
                  )
                : new CircularProgressIndicator();
          },
        ));
  }
}

class ListVideo extends StatelessWidget {
  final List list;
  ListVideo({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Column(children: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new VideoPlayer(
                        url:
                            "https://youtube.com/embed/${list[i]['contentDetails']['videoId']}"))),
                child: new Container(
                  height: 210.0,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new NetworkImage(
                              list[i]['snippet']['thumbnails']['high']['url']),
                          fit: BoxFit.cover)),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Text(
                list[i]['snippet']['title'],
                style: new TextStyle(fontSize: 18.0),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Divider(),
            ]),
          );
        });
  }
}

class VideoPlayer extends StatelessWidget {
  final String url;
  VideoPlayer({this.url});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new WebviewScaffold(
        url: url,
      ),
    );
  }
}
