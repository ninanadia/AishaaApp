import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';

class RisalahMenuPage extends StatefulWidget {
  @override
  _RisalahMenuPageState createState() => _RisalahMenuPageState();
}

class _RisalahMenuPageState extends State<RisalahMenuPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 30.0),
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/risalahhaidpage');
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 10.0),
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: TemaApp.dustyYoungColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text(
                  "Risalah  Haid",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: TemaApp.whiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/risalahnifaspage');
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 10.0),
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: TemaApp.pinkYoungColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text(
                  "Risalah Nifas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: TemaApp.whiteColor,
                      fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/risalahistihadohpage');
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 10.0),
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: TemaApp.pinkSmokyColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text(
                  "Risalah Istihadoh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: TemaApp.whiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
