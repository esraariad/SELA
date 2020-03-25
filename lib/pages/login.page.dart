import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/loginForm.dart';

class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  Logo(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    LoginForm()
                ],
              ),
            ),
          )
        : Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/1.png"),
                      fit: BoxFit.cover)),
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                     Logo(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    LoginForm()
                  ],
                ),
              ),
            ),
          );
  }
}
