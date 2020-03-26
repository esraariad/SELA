import 'package:flutter/material.dart';
import 'package:Sela/widgets/logo.dart';

class Welcom extends StatefulWidget{ 
    _Welcom createState() => _Welcom();

}

class _Welcom extends State<Welcom>{
 Widget loginButton(){
   return   Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      child: FlatButton(
        onPressed: () {
           Navigator.pushNamed(context, '/Login');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'DroidKufi'),
            ),
          ],
        ),
      ),
    );
 }
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
          loginButton(),
          
         ],
       ),
     ),
     
      ),
    )
    
    ;
  }
}
