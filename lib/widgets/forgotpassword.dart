import 'package:flutter/material.dart';


class ForgotPassord extends StatefulWidget{
 _ForgotPassord createState() =>_ForgotPassord();
  
}
 class _ForgotPassord extends State <ForgotPassord>{
@override
Widget build(BuildContext context) {
  return
  
  Center(
child:  FlatButton(
          onPressed: (){
 // Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage()));
          Navigator.pushNamed(context, '/ResetPassword');

          },
          child: Text(
            'هل نسيت كلمة السر؟',
            style: TextStyle(
              color: Colors.white,
            decoration: TextDecoration.underline,
            fontFamily: 'DroidKufi',
            fontSize:15,
            ),
            
            textAlign: TextAlign.right,
          ),
        ),
  )
  
  
  
  
  
   ;
}
 }