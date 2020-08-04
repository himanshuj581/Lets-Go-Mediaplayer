import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';

class LocalMusic extends StatefulWidget {
  @override
  _LocalMusicState createState() => _LocalMusicState();
}

class _LocalMusicState extends State<LocalMusic>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String filename = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Local Music',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff202020),
      ),
      body: Container(
        color: Color(0xffe0e0e0),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffcfd8dc),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 6, color: Color(0xff202020))),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      String filePath =
                          await FilePicker.getFilePath(type: FileType.audio);
                      int status =
                          await _audioPlayer.play(filePath, isLocal: true);
                      if (status == 1) {
                        setState(() {
                          filename = basename(filePath);
                          isPlaying = true;
                        });
                      }
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(width: 4, color: Color(0xff202020))),
                      child: Text(
                        'Add Song',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
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
                              _audioPlayer.pause();
                              setState(() {
                                isPlaying = false;
                              });
                            } else {
                              _audioPlayer.resume();
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
                            _audioPlayer.stop();
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
