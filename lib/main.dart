import 'package:Sela/pages/login.page.dart';
import 'package:Sela/pages/resetpassword.page.dart';
import 'package:flutter/material.dart';
import 'package:Sela/pages/Welcom.page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
   // '/': (context) => Welcom(),   ///If the home property is specified, the routes table cannot include an entry for "/", since it would be redundant. 
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/Login': (context) => Login(),
    '/ResetPassword' : (context) => ResetPasswordPage()
  },

      title: 'SELA CRM',
      theme: ThemeData( 
        primarySwatch: Colors.blue,      
      ),
      home: Welcom(),
      debugShowCheckedModeBanner: false,

    );
  }
}




  
