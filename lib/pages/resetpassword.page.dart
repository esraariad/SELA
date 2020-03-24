import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/inputTextFiled.dart';
import 'package:Sela/widgets/resetpassword.dart';
import 'package:Sela/widgets/resetpasswordbutton.dart';
import 'package:Sela/widgets/backtopreviouspage.dart';
class ResetPasswordPage extends StatefulWidget {
  _ResetPasswordPage createState() => _ResetPasswordPage();
}

class _ResetPasswordPage extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/1.png"), fit: BoxFit.cover)),
      child: Expanded(
        child: ListView(
          children: <Widget>[
            Logo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            ResetPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InputData('البريد الإلكتروني', false),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            BackToPreviousPage('Login'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            ResetPasswordButton(),
          ],
        ),
      ),
    ));
  }
}
