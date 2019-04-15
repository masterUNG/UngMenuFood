import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // Explicit
  String titleUser = 'ลงชื่อผู้ใช้งาน :';
  String hintUser = 'กรุณากรอก ชื่อผู้ใช้งาน';

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

  // User
  Widget userTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: titleUser,
          hintText: hintUser,
          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white)),
    );
  }

  // Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :',
          hintText: 'More 6 Charactor',
          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white)),
    );
  }

  // SignIn
  Widget signInButton() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.green[700],
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  //  SignUp
  Widget signUpButton() {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.green[100],
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.teal[900]),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: showAppName(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: userTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFormField(),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: signInButton(),
                  ),
                  new Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: signUpButton(),
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
