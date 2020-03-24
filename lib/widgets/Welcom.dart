import 'package:flutter/material.dart';

class WelcomWord extends StatefulWidget{
  @override
  _WelcomWord createState() => _WelcomWord();
}

class _WelcomWord extends State<WelcomWord>{
@override
Widget build(BuildContext context) {
  return 
  Padding(
  padding: const EdgeInsets.only(top:0 ,left: 22 ),
  child: Center(
    child: Text(
     'مرحبا بكم',
      style:TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'DroidKufi'

      )
    ),
  ),
  )
  
  ;
}
}