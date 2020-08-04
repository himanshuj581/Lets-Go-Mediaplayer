import 'package:LetsGoMediaplayer/UI/AssetMusic.dart';
import 'package:LetsGoMediaplayer/UI/AssetVideo.dart';
import 'package:flutter/material.dart';

class Asset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assets',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff202020),
      ),
      body: Container(
        color: Color(0xffe0e0e0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AssetMusic()));
              },
              child: Container(
                width: 350,
                height: 80,
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color(0xffcfd8dc),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 6, color: Color(0xff202020))),
                child: Text(
                  'Music',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xff202020)),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AssetVideo()));
              },
              child: Container(
                width: 350,
                height: 80,
                padding: EdgeInsets.only(top: 15),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color(0xffcfd8dc),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 6, color: Color(0xff202020))),
                child: Text(
                  'Video',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xff202020)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
