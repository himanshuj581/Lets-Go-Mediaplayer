import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AboutCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Creator',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff202020),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Opacity(
                opacity: 0.3,
                child: Image(image: AssetImage('assets/images/bg.jpg'))),
            Container(
              width: double.infinity,
              height: double.infinity,
              margin:
                  EdgeInsets.only(left: 30, right: 60, top: 60, bottom: 150),
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.only(left: 30, top: 30),
                    padding: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        color: Color(0xffcfd8dc),
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(40)),
                        border: Border.all(width: 7, color: Color(0xff202020))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            'Himanshu Jain',
                            style: TextStyle(
                                color: Color(0xff202020),
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Intro-',
                            style: TextStyle(
                                color: Color(0xff202020),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 15),
                          child: Text(
                            '   Hey all, this is Himanshu, creator of this app. I am an engineering student always tries to grab opportunities to implement my skills in the welfare of others.',
                            style: TextStyle(
                                color: Color(0xff202020),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesome.mail, color: Color(0xff202020)),
                              Text(
                                '  himanshuj581@gmail.com',
                                style: TextStyle(
                                    color: Color(0xff202020),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesome.linkedin,
                                  color: Color(0xff202020)),
                              Text(
                                '  himanshu-jain-871694170',
                                style: TextStyle(
                                    color: Color(0xff202020),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesome.github_squared,
                                  color: Color(0xff202020)),
                              Text(
                                '  himanshuj581',
                                style: TextStyle(
                                    color: Color(0xff202020),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/me.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff202020),
                        width: 6,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
