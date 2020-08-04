import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class AssetMusic extends StatefulWidget {
  @override
  _AssetMusicState createState() => _AssetMusicState();
}

class _AssetMusicState extends State<AssetMusic>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool isPlaying = false;
  String filename = '';
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    assetsAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assets Music',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff202020),
      ),
      body: Container(
        color: Color(0xffe0e0e0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 330,
              margin:
                  EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 120),
              decoration: BoxDecoration(
                  color: Color(0xffcfd8dc),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 6, color: Color(0xff202020))),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/Afreeda.mp3"),
                      );
                      setState(() {
                        filename = 'Afreeda.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Afreeda',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff202020),
                    height: 6,
                    thickness: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/DilBechara.mp3"),
                      );
                      setState(() {
                        filename = 'DilBechara.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Dil Bechara',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff202020),
                    height: 6,
                    thickness: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/Friendzone.mp3"),
                      );
                      setState(() {
                        filename = 'Friendzone.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'FriendZone',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff202020),
                    height: 6,
                    thickness: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/KhulkeJeeneKa.mp3"),
                      );
                      assetsAudioPlayer.play();
                      setState(() {
                        filename = 'KhulkeJeeneKa.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Khulke Jeene Ka',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff202020),
                    height: 6,
                    thickness: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/MainTumhara.mp3"),
                      );
                      setState(() {
                        filename = 'MainTumhara.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Mai Tumhara',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff202020),
                    height: 6,
                    thickness: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      assetsAudioPlayer.stop();
                      assetsAudioPlayer.open(
                        Audio("assets/audio/Maskhari.mp3"),
                      );
                      setState(() {
                        filename = 'Maskhari.mp3';
                        isPlaying = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Maskhari',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 130,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Color(0xffcfd8dc),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 6, color: Color(0xff202020))),
              child: Column(
                children: <Widget>[
                  Text(
                    filename,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff202020)),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            if (isPlaying) {
                              assetsAudioPlayer.pause();
                              setState(() {
                                isPlaying = false;
                              });
                            } else {
                              assetsAudioPlayer.play();
                              setState(() {
                                isPlaying = true;
                              });
                            }
                          },
                          icon: Icon(
                            isPlaying ? FontAwesome5.pause : FontAwesome5.play,
                            size: 48,
                            color: Color(0xff202020),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            assetsAudioPlayer.stop();
                            setState(() {
                              isPlaying = false;
                            });
                          },
                          icon: Icon(
                            FontAwesome5.stop,
                            size: 48,
                            color: Color(0xff202020),
                          ),
                        )
                      ],
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
}
