import 'package:LetsGoMediaplayer/UI/BrowseOnlineVideo.dart';
import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';

class BrowseOnline extends StatefulWidget {
  @override
  BrowseOnlineState createState() => new BrowseOnlineState();
}

class BrowseOnlineState extends State<BrowseOnline> {
  static String key =
      "Your API_KEY"; // ** ENTER YOUTUBE API KEY HERE **

  YoutubeAPI ytApi = new YoutubeAPI(key);
  List<YT_API> ytResult = [];
  String query = "Flutter";

  callAPI() async {
    ytResult = await ytApi.search(query);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Browse Online',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          backgroundColor: Color(0xff202020),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      query = value;
                    });
                    callAPI();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Search',
                  ),
                ),
              ),
              Container(
                height: 600,
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                    itemCount: ytResult.length,
                    itemBuilder: (_, int index) => listItem(index)),
              ),
            ],
          ),
        ));
  }

  Widget listItem(index) {
    return Card(
      color: Color(0xffe0e0e0),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BrowseOnlineVideo(
                        url: ytResult[index].url,
                      )));
        },
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Image.network(
                ytResult[index].thumbnail['default']['url'],
              ),
              Padding(padding: EdgeInsets.only(right: 20.0)),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text(
                      ytResult[index].title,
                      softWrap: true,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 1.5)),
                    Text(
                      ytResult[index].channelTitle,
                      softWrap: true,
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 3.0)),
                    Text(
                      ytResult[index].url,
                      softWrap: true,
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
