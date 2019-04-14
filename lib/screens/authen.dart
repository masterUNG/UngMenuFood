import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // Show Logo
  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  // App Name
  Widget showAppName() {
    return Text(
      'Ung Restaurant',
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orangeAccent[700], Colors.orangeAccent[100]],
                begin: Alignment(-1, -1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showLogo(),
            Container(margin: EdgeInsets.only(top: 30.0),
              child: showAppName(),
            )
          ],
        ),
      ),
    );
  }
}
