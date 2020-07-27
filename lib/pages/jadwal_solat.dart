import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aishaa_app/models/prayer_time.dart';


class JadwalSolatPage extends StatefulWidget {
  @override 
  _JadwalSolatPageState createState() => _JadwalSolatPageState();
}

class _JadwalSolatPageState extends State<JadwalSolatPage> {
  String finalDate = '';
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position userLocation;
  Placemark userAddress;

  double lat_value = -3.0149986;
  double long_value = 120.1649646;
  String address = "Kota Palopo";

  List<String> _prayerTimes = [];
  List<String> _prayerNames = [];
  List initData = []; //untuk menampung data dari sharedpreferences

  @override
  void initState(){
    super.initState();

    getSP().then((value) {
      initData = value;
      getPrayerTimes(lat_value, long_value);
      getAddress(lat_value, long_value);
    });
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
        title: Text("Jadwal Solat", style: TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
            child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () {
                        _getLocation().then((value) {
                          setState(() {
                            userLocation = value;
                            getPrayerTimes(
                                userLocation.latitude, userLocation.longitude);
                            getAddress(
                                userLocation.latitude, userLocation.longitude);
                            address = "${userAddress.subAdministrativeArea}"
                                " ${userAddress.country}";
                          });

                          setSP();
                        });
                      },
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      label: Text(
                        address ?? "Mencari Lokasi . . .",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  FlatButton.icon(
                      onPressed: () {
                        getCurrentDate();
                      },
                      icon: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      label: Text("$finalDate", style: TextStyle(fontSize: 16)))
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
                margin: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                    itemCount: _prayerNames.length,
                    itemBuilder: (context, position) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: TemaApp.pinkDustyColor,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: Text(
                                _prayerNames[position],
                                style: TextStyle(color: Colors.white, fontSize: 15,)
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.pink[50],
                                ),
                                child: Text(_prayerTimes[position],
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 20)))
                          ],
                        ),
                      );
                    }
                    )
                  ),

            SizedBox(height: 10),
          ],
        )),
      ),
    );
  }

  Future<Position> _getLocation() async {
    var currentLocation;

    try {
      currentLocation = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }

  getAddress(double lat, double long) async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(lat, long);
      Placemark place = p[0];
      userAddress = place;
    } catch (e) {
      userAddress = null;
    }
  }

  getCurrentDate() {
    var date = new DateTime.now().toString();
    var dateParse = DateTime.parse(date);
    var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    setState(() {
      finalDate = formattedDate.toString();
    });
  }

  getPrayerTimes(double lat, double long) {
    PrayerTime prayers = new PrayerTime();

    prayers.setTimeFormat(prayers.getTime12());
    prayers.setCalcMethod(prayers.getMWL());
    prayers.setAsrJuristic(prayers.getShafii());
    prayers.setAdjustHighLats(prayers.getAdjustHighLats());

    List<int> offsets = [-6, 0, 3, 2, 0, 3, 6];

    String tmx = "${DateTime.now().timeZoneOffset}";

    var currentTime = DateTime.now();
    var timeZone = double.parse(tmx[0]);
    prayers.tune(offsets);

    setState(() {
      //berfungsi untuk menginformasikan flutter bahwa ada perubahan state perubahan disini adalah perubahan nlai variabel prayertimes didapatkan dari output properti getprayerTimes
      _prayerTimes = prayers.getPrayerTimes(currentTime, lat, long, timeZone);
      _prayerNames = prayers.getTimeNames();
    });
  }

  void setSP() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setDouble('key_lat', userLocation.latitude);
    pref.setDouble('key_long', userLocation.longitude);
    pref.setString('key_address',
        "${userAddress.subAdministrativeArea}" " ${userAddress.country}");
  }

  Future<dynamic> getSP() async {
    List dataPref = [];
    SharedPreferences pref = await SharedPreferences.getInstance();

    lat_value = pref.getDouble('key_lat');
    long_value = pref.getDouble('key_long');
    address = pref.getString('key_address');

    dataPref.add(lat_value);
    dataPref.add(long_value);
    dataPref.add(address);

    return dataPref;
  }
}


