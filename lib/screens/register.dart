import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit
  final formKey = GlobalKey<FormState>();
  String name, user, password;

  Widget uploadIcon(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Upload');
        uploadValueToServer(context);
      },
    );
  }

  void uploadValueToServer(BuildContext context) async{
    print(formKey.currentState.validate());

    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      String urlPHP = 'https://www.androidthai.in.th/note/addUserMaster.php?isAdd=true&Name=$name&User=$user&Password=$password';
      print(urlPHP);

      var response = await get(urlPHP);
      var result = json.decode(response.body);
      print('result ==>>> $result');

      if (result.toString() == 'true') {
        Navigator.pop(context);
      }

    } // if
  } // upload

  // Name
  Widget nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name :', hintText: 'Name in Eng'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please Fill Name in Blank';
        }
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  // User
  Widget userTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'User :', hintText: 'fill user here'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please Fill User in Blank';
        }
      },
      onSaved: (String value) {
        user = value;
      },
    );
  }

  // Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'More 6 Charactor'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please Fill Password in Blank';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Register'),
          actions: <Widget>[uploadIcon(context)],
        ),
        body: Form(
          key: formKey,
          child: Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(50.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              child: Column(
                children: <Widget>[
                  nameTextFormField(),
                  userTextFormField(),
                  passwordTextFormField()
                ],
              ),
            ),
          ),
        ));
  }
}
