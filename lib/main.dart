import 'package:flutter/material.dart';
import 'dart:async';
import 'package:loading_animations/loading_animations.dart';
import 'dart:math';
import './Start.dart';
import 'package:connectivity/connectivity.dart';

void main() {
  runApp(Display());
}

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: DisplayDemo(),
    );
  }
}

class DisplayDemo extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

var connect = Connectivity();
String connection = "Disconnected";
int a = 0;

void _showDialog(String title, String content, BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: new Text("You are " + title),
            content: new Text(content),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text("Close"))
            ]);
      });
}

class _DisplayState extends State<DisplayDemo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      while (connection == "Disconnected") {
        var response2 = await Future.delayed(Duration(seconds: 6));
        var response = await connect.checkConnectivity();
        if (response == ConnectivityResult.mobile ||
            response == ConnectivityResult.wifi) {
          connection = "Connected";
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => StartApp()));
        }
        a++;
        if (a == 2) {
          _showDialog(connection,
              "Please check your Internet Connection and try again", context);
          break;
        }
      }
    });
  }

  List<String> listImages = [
    'assets/images/nb1.png',
    'assets/images/nb2.png',
    'assets/images/nb3.png',
    'assets/images/nb4.png',
    'assets/images/nb5.png',
    'assets/images/nb6.png',
    'assets/images/nb7.png',
    'assets/images/nb8.png',
    'assets/images/nb9.png',
    'assets/images/nb10.png',
  ];
  Random rnd;

  List<String> tips = [
    "“You’re off to great places, today is your day. Your mountain is waiting, so get on your way.”",
    "“You always pass failure on the way to success.”",
    "“No one is perfect - that’s why pencils have erasers.”",
    "“You’re braver than you believe, and stronger than you seem, and smarter than you think.”",
    "“It always seems impossible until it is done.”",
    "“Positive thinking will let you do everything better than negative thinking will.”",
    "“In every day, there are 1,440 minutes. That means we have 1,440 daily opportunities to make a positive impact.”",
    "“The only time you fail is when you fall down and stay down.”",
    "“Positive anything is better than negative nothing.”",
    "“When you are enthusiastic about what you do, you feel this positive energy. It’s very simple.”",
  ];
  int imageNb() {
    int min = 0;
    int max = listImages.length - 1;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Align(
              alignment: Alignment(0, 0),
              child: Container(
                height: 500,
                child: Image.asset(listImages[imageNb()]),
              )),
          Container(height: 30),
          Container(
              width: 300,
              alignment: Alignment(0, 0),
              child: Text(tips[imageNb()])),
          Container(height: 30),
          LoadingBumpingLine.circle(
            borderColor: Colors.purple[900],
            borderSize: 3.0,
            size: 50.0,
            backgroundColor: Colors.deepPurple,
            duration: Duration(milliseconds: 500),
          )
        ]));
  }
}
