//import 'dart:io';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/LoginModule/loginForm.dart';


class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: <Widget>[
                  Logo(),
                      SizedBox(
                   height: MediaQuery.of(context).size.height * .05,
                      ),
                      LoginForm(),
                ],
              ),
            ),
          );
  }
}
