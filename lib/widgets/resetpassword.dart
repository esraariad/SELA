import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget{
 _ResetPassword createState() =>_ResetPassword();
  
}
 class _ResetPassword extends State <ResetPassword>{
@override
Widget build(BuildContext context) {
  return
  
  Center(
child:  FlatButton(
          onPressed: (){
         
          },
          child: Text(
            'إعادة تعيين كلمة السر',
            style: TextStyle(
              color: Colors.white,
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