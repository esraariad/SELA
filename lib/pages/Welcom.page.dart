import 'package:flutter/material.dart';
import 'package:Sela/widgets/loginbutton.dart';
import 'package:Sela/widgets/logo.dart';

class Welcom extends StatefulWidget{ 
    _Welcom createState() => _Welcom();

}

class _Welcom extends State<Welcom>{
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      body: Container(
      decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/1.png"), fit: BoxFit.cover)),
     child: Expanded(
            child: ListView(
         children: <Widget>[
           Logo(),
           SizedBox(
             height:  MediaQuery.of(context).size.height*.3,
           ),
          LoginButton(),
          
         ],
       ),
     ),
     
      ),
    )
    
    ;
  }
}
