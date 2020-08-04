import 'package:LetsGoMediaplayer/UI/AboutCreator.dart';
import 'package:LetsGoMediaplayer/UI/Home.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/logo1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff202020),
              ),
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        FontAwesome5.home,
                        size: 34,
                        color: Color(0xff202020),
                      ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xff202020)),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        FontAwesome5.user,
                        size: 34,
                        color: Color(0xff202020),
                      ),
                    ),
                    Text(
                      'About Creator',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xff202020)),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutCreator()));
              },
            ),
          ],
        ),
      ),
      body: Opacity(
        opacity: 0.7,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
      ),
    );
  }
}
