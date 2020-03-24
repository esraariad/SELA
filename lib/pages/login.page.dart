import 'package:flutter/material.dart';
import 'package:Sela/widgets/loginbutton.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/inputTextFiled.dart';
import 'package:Sela/widgets/forgotpassword.dart';
class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State <Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              InputData('الاسم', false),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
               InputData('كلمة السر' , true),
               ForgotPassord(),
               SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
               LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
 