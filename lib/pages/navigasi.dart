import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:aishaa_app/pages/home.dart';
import 'package:aishaa_app/pages/jadwal_solat.dart';
import 'package:aishaa_app/pages/more.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    JadwalSolatPage(),
    MorePage(),
  ];

  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.watch_later),
        backgroundColor: TemaApp.pinkRoseColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 0;
                    });
                  },
                  child: Column(children: <Widget>[
                    Icon(
                      Icons.home,
                      color: currentTab == 0
                          ? TemaApp.pinkRoseColor
                          : TemaApp.greyColor,
                    ),
                  ]),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = MorePage();
                      currentTab = 1;
                    });
                  },
                  child: Column(children: <Widget>[
                    Icon(
                      Icons.apps,
                      color: currentTab == 1
                          ? TemaApp.pinkRoseColor
                          : TemaApp.greyColor,
                    ),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
