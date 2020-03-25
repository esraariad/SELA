import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';
import 'package:Sela/widgets/newPAsswordForm.dart';



class NewPasswordPage extends StatefulWidget {
  _NewPasswordPage createState() => _NewPasswordPage();
}

class _NewPasswordPage extends State<NewPasswordPage> {

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
            NewPasswordForm(),
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
