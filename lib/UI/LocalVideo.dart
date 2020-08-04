import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:path/path.dart';

class LocalVideo extends StatefulWidget {
  @override
  _LocalVideoState createState() => _LocalVideoState();
}

class _LocalVideoState extends State<LocalVideo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  VideoPlayerController _videoPlayerController;
  Future<void> _initializeVideoPlayerFuture;
  bool isPlaying = false;
  String filename = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _videoPlayerController = VideoPlayerController.network('');
    _videoPlayerController.setLooping(true);
    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Local Video',
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
              height: 430,
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
                          await FilePicker.getFilePath(type: FileType.video);
                      String fileName = basename(filePath);
                      setState(() {
                        filename = fileName;
                      });
                      _videoPlayerController.dispose();
                      _videoPlayerController =
                          VideoPlayerController.file(File(filePath));
                      _videoPlayerController.setLooping(false);
                      _initializeVideoPlayerFuture =
                          _videoPlayerController.initialize();
                      _videoPlayerController.play();
                      setState(() {
                        isPlaying = true;
                      });
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
                        'Add Video',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020)),
                      ),
                    ),
                  ),
                  Text(
                    filename,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff202020)),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 6, color: Color(0xff202020))),
                    child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: 3 / 2,
                            child: VideoPlayer(_videoPlayerController),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (isPlaying) {
                        _videoPlayerController.pause();
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        _videoPlayerController.play();
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
