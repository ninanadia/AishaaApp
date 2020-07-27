import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:aishaa_app/pages/home.dart';
import 'package:aishaa_app/pages/more.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
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
        child: Icon(Icons.access_time, size: 30),
        backgroundColor: TemaApp.pinkRoseColor,
        onPressed: () {
          Navigator.pushNamed(context, "/jadwalshalat");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, size:30),
              color:
                  currentTab == 0 ? TemaApp.pinkRoseColor : TemaApp.greyColor,
              onPressed: () {
                setState(() {
                  currentScreen = HomePage();
                  currentTab = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.apps, size:30),
              color:
                  currentTab == 1 ? TemaApp.pinkRoseColor : TemaApp.greyColor,
              onPressed: () {
                setState(() {
                  currentScreen = MorePage();
                  currentTab = 1;
                });
              },
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
