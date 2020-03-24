import 'package:flutter/material.dart';
class LoginButton extends StatefulWidget {
  _LoginButton createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(right: 15, left: 15),

      //   width: MediaQuery.of(context).size.width*.9,
      // height:  MediaQuery.of(context).size.width*.1,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      child: FlatButton(
        onPressed: () {
        //  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
}
