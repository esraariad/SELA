//import 'dart:io';
//import 'package:flutter/cupertino.dart';
import 'package:Sela/pages/LoginModule/login.page.dart';
import 'package:Sela/pages/LoginModule/resetpassword.page.dart';
import 'package:flutter/material.dart';
import 'package:Sela/pages/LoginModule/Welcom.page.dart';
import 'package:Sela/pages/LoginModule/codeOfResetPassword.page.dart';
import 'package:Sela/pages/LoginModule/newPassword.page.dart';
import 'package:Sela/pages/LoginModule/passwordChangedSuccessfuly.page.dart';
import 'package:Sela/pages/MainPage.page.dart';
import 'pages/TabsModule/SingleCustomerDetails.Page.dart';
import './pages/TabsModule/HomeTAbe.page.dart';
import 'pages/TabsModule/ProjectsTab.page.dart';
import 'pages/TabsModule/CustomersTab.page.dart';
import 'pages/TabsModule/CalendarTab.page.dart';
import 'package:Sela/Providers/Customesrs.dart';
import 'package:provider/provider.dart';
import 'Providers/auth.dart';
import 'Providers/FollowUpProvider.dart';
import 'Providers/Reservation.dart';
import './pages/TabsModule/AddReservation.page.dart';
import 'Providers/Projects.dart';

void main() {
  runApp(MyApp());
}

final routsarray = {
  // When navigating to the "/" route, build the FirstScreen widget.
  // '/': (context) => Welcom(),   ///If the home property is specified, the routes table cannot include an entry for "/", since it would be redundant.
  // When navigating to the "/second" route, build the SecondScreen widget.
  //initialRoute: '/',
  '/Login': (context) => Login(),
  '/ResetPassword': (context) => ResetPasswordPage(),
  '/CodeResetPassword': (context) => CodeResetPasswordPage(),
  '/NewPassword': (context) => NewPasswordPage(),
  '/PAsswordChangedSuccessfuly': (context) => PasswordChangedSuccessfuly(),
  '/MainPage': (context) => MAinPAge(),
  'CustomerDetailsPage': (context) => CustomerDetailsPage(),
  'CalendarTab': (context) => CalendarTab(),
  'HomeTab': (context) => HomeTab(),
  'CustomerTab': (context) => CustomerTab(),
  'ProjectsTab': (context) => ProjectsTab(),
  'AddReservation': (context) => AddReservationPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthProvider(),
        ),

        ChangeNotifierProxyProvider<AuthProvider, Customers>(
          create: (_) => Customers(AuthProvider().token),
          update: (ctx, auth, customers) =>customers..update(auth==null?'':auth),
         ),
          ChangeNotifierProxyProvider<AuthProvider, FollowUpProvider>(
          create: (_) => FollowUpProvider(AuthProvider().token),
          update: (ctx, auth, followup) =>followup..update(auth==null?'':auth),
         ),
          ChangeNotifierProxyProvider<AuthProvider, ReservationProvider>(
          create: (_) => ReservationProvider(AuthProvider().token),
          update: (ctx, auth, reservation) =>reservation..update(auth==null?'':auth),
         ),
         ChangeNotifierProxyProvider<AuthProvider, ProjectProvider>(
          create: (_) => ProjectProvider(AuthProvider().token),
          update: (ctx, auth, projects) =>projects..update(auth==null?'':auth),
         ),
      ],
      child: 
      Consumer<AuthProvider>(

        builder: (ctx, auth, _) => MaterialApp(
          routes: routsarray,
          title: 'SELA CRM',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  auth.isAuth ? MAinPAge() :Welcom(),
          debugShowCheckedModeBanner: false,
        ),
      ),
     
    );
  }
}
