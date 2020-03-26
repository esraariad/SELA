import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/LoginModule/resetPasswordForm.dart';



class ResetPasswordPage extends StatefulWidget {
  _ResetPasswordPage createState() => _ResetPasswordPage();
}

class _ResetPasswordPage extends State<ResetPasswordPage> {

Widget resetPassword (){
  return  Center(
          child: Text(
            'إعادة تعيين كلمة السر',
            style: TextStyle(
              color: Colors.white,
            fontFamily: 'DroidKufi',
            fontSize:15,
            ),
            
            textAlign: TextAlign.right,
          ),
        
  )
   ;
}


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
            resetPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            ResetPasswordForm(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
          ],
        ),
      ),
    ));
  }
}
