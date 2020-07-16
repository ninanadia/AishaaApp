import 'package:aishaa_app/pages/jadwal_solat.dart';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:aishaa_app/widget/risalah.dart';
import 'package:flutter/rendering.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:aishaa_app/widget/video.dart';
import 'package:aishaa_app/pages/more.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    MorePage(),
  ];

  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.watch_later, size: 30,),
        backgroundColor: TemaApp.pinkRoseColor,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => JadwalSolatPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 35,
                      color: currentTab == 0
                          ? TemaApp.pinkRoseColor
                          : TemaApp.greyColor,
                    ),
                  ]),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
                    setState(() {
                      currentScreen = MorePage();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.apps,
                      size: 35,
                      color: currentTab == 1
                          ? TemaApp.pinkRoseColor
                          : TemaApp.greyColor,
                    ),
                  ]),
                )
              ],
            ),
          )),
      appBar: GradientAppBar(
        gradient: LinearGradient(
          colors: [
            TemaApp.pinkRoseColor,
            TemaApp.pinkYoungColor,
          ],
          tileMode: TileMode.clamp,
        ),
        title: Text(
          "Beranda",
          style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[backgroundHeader(), welcomeBar()],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 110, 7, 0),
              child: Text(
                "Kategori Risalah",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat-Bold',
                    fontWeight: FontWeight.w800,
                    fontSize: 15.0),
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(
                top: 2.0,
                bottom: 5.0,
              ),
              child: RisalahMenuPage(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 7, 0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Video Kajian",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'MontserratBold',
                          fontWeight: FontWeight.w800,
                          fontSize: 15.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/videokajianpage');
                      },
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat-Light',
                            color: TemaApp.pinkRoseColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: VideoMenu(),
            ),
          ],
        ),
        //createCustomBottomNavBar(),

        /*Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 46,
            width: 46,
            margin: EdgeInsets.only(bottom: 4),
            child: FloatingActionButton(
                elevation: 0,
                backgroundColor: TemaApp.pinkRoseColor,
                child: SizedBox(
                  height: 26,
                  width: 26,
                  child: Icon(Icons.watch_later),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JadwalSolatPage()));
                }),
          ),
        )*/
      );
  }

  /*Widget createCustomBottomNavBar() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: BottomNavBarClipper(),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: TemaApp.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: TemaApp.pinkRoseColor,
              unselectedItemColor: TemaApp.greyColor,
              //currentIndex: bottomNavBarIndex,
              items: [
                BottomNavigationBarItem(
                    title: Text('Beranda'),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                    )),
              ],
            ),
          ),
        ));
  }*/
}

Widget welcomeBar() {
  return Positioned(
      top: 80,
      left: 20,
      right: 20,
      child: Container(
        width: 170,
        height: 140,
        decoration: BoxDecoration(
            color: TemaApp.whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(3.0, 3.0),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          //karena ada dua objek jadi pake row
          child: Row(
            //main alignmentnya spacearound supaya kedua objek ada jarak yang sesuai
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Text(
                    "Selamat datang di aplikasi \n Aishaa, semoga ilmu yang \n telah tersedia dapat \n bermanfaat untukmu ya :)",
                    style: TextStyle(
                        fontSize: 15,
                        color: TemaApp.pinkRoseColor,
                        fontFamily: 'Montserrat-SemiBold')),
              ]),
              Column(
                children: <Widget>[
                  Image.asset(
                    "./assets/images/human.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
}

Widget backgroundHeader() {
  return Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            TemaApp.pinkRoseColor,
            TemaApp.pinkYoungColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //bagian menampilkan text
              Text(
                "Assalamu'alaikum,",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat-SemiBold'),
              ),
              Text("Ukhti",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-SemiBold'))
            ]),
      ));
}

class BottomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width / 2 - 28, 0);
    path.quadraticBezierTo(size.width / 2 - 28, 33, size.width / 2, 33);
    path.quadraticBezierTo(size.width / 2 + 28, 33, size.width / 2 + 28, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
