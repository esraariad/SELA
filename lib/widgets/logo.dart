import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  _Logo createState() => _Logo();
}

class _Logo extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:70),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                 width:  MediaQuery.of(context).size.width*.9,
                    height: MediaQuery.of(context).size.height*.2,
                child: Image.asset(
                    'lib/assets/images/Logo.png',
                 //   fit: BoxFit.cover,
                 
     
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
