import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:aishaa_app/pages/playlist.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class VideoKajianPage extends StatefulWidget {
  @override
  _VideoKajianPageState createState() => _VideoKajianPageState();
}

class _VideoKajianPageState extends State<VideoKajianPage> {
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
        title: Text("Video Kajian", style: TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
      child: 
      new Column(
        children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 150, 10),
            
            child: Text(
              "Pilih Playlist Videomu",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16.0),
            )),
        new Padding(
          padding: const EdgeInsets.all(5),
        ),
        new ListMenu(
          title: "Kajian Risalah Al Mahid",
          url: "https://kajianrisalahalmahid.herokuapp.com/",
        ),
        Divider(),
        new ListMenu(
          title: "Kajian Haid Buya Yahya",
          url: "https://kajianhaidbuyayahya.herokuapp.com/",
        ),
        Divider(),
        new ListMenu(
          title: "Kajian Nifas Buya Yahya",
          url: "https://kajiannifasbuyayahya.herokuapp.com/",
        ),
        Divider(),
        new ListMenu(
          title: "Kajian Istihadoh Buya Yahya",
          url: "https://kajianistihadohbuyayahya.herokuapp.com/",
        ),
        Divider(),
        new ListMenu(
          title: "Seputar Darah Bersama Ustadzah Aini, Lc",
          url: "https://kajianustadzahaini.herokuapp.com/",
        )
      ])),
    );
  }
}

class ListMenu extends StatelessWidget {
  ListMenu({this.title, this.url});
  final String title;
  final String url;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new Icon(
        Icons.video_library,
        color: TemaApp.pinkRoseColor,
      ),
      title: new Text(
        title,
        style: new TextStyle(fontSize: 15.0),
      ),
      onTap: () => Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (BuildContext context) => new Playlist(
                  url: url,
                  title: title,
                )),
      ),
    );
  }
}
