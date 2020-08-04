import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:video_player/video_player.dart';

class BrowseOnlineVideo extends StatefulWidget {
  final String url;
  BrowseOnlineVideo({Key key, @required this.url}) : super(key: key);
  @override
  _BrowseOnlineVideoState createState() => _BrowseOnlineVideoState();
}

class _BrowseOnlineVideoState extends State<BrowseOnlineVideo>
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
    _videoPlayerController = VideoPlayerController.network(
        widget.url.replaceAll(new RegExp(r"\s+\b|\b\s"), ""));
    _videoPlayerController.setLooping(false);
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
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 370,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xffcfd8dc),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 6, color: Color(0xff202020))),
                  child: Column(
                    children: <Widget>[
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
                            border:
                                Border.all(width: 6, color: Color(0xff202020))),
                        child: FutureBuilder(
                          future: _initializeVideoPlayerFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
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
          ],
        ),
      ),
    );
  }
}
