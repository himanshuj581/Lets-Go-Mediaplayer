import 'package:LetsGoMediaplayer/UI/Asset.dart';
import 'package:LetsGoMediaplayer/UI/BrowseOnline.dart';
import 'package:LetsGoMediaplayer/UI/LocalStorage.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home1(context);
  }
}

Home1(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Lets Go Mediaplayer',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      backgroundColor: Color(0xff202020),
    ),
    body: Container(
      color: Color(0xffe0e0e0),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LocalStorage()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 120,
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Local Storage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff202020)),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 40),
                  decoration: BoxDecoration(
                      color: Color(0xffcfd8dc),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 7, color: Color(0xff202020))),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(top: 120),
                  child: Icon(
                    Octicons.device_mobile,
                    color: Color(0xff202020),
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffcfd8dc),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0xff202020),
                      width: 6,
                    ),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BrowseOnline()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 120,
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Browse Online',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff202020)),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 30),
                  decoration: BoxDecoration(
                      color: Color(0xffcfd8dc),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 7, color: Color(0xff202020))),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(top: 90, left: 290),
                  child: Icon(
                    FontAwesome5.globe_americas,
                    color: Color(0xff202020),
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffcfd8dc),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0xff202020),
                      width: 6,
                    ),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Asset()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 120,
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Assets',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff202020)),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 40),
                  decoration: BoxDecoration(
                      color: Color(0xffcfd8dc),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 7, color: Color(0xff202020))),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(top: 90),
                  child: Icon(
                    FontAwesome5.database,
                    color: Color(0xff202020),
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffcfd8dc),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0xff202020),
                      width: 6,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
