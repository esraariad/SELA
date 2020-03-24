import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  _InputData createState() => _InputData();
  final String inputType;
  final bool pass;
  InputData(this.inputType, this.pass);
}

class _InputData extends State<InputData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.height * .08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          
        ),
       // width: MediaQuery.of(context).size.width *.6,
       margin: EdgeInsets.only(right: 10,left: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: widget.pass == true
              ? TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: 'DroidKufi',
                  ),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: widget.inputType,
                    labelStyle: TextStyle(
                      fontFamily: 'DroidKufi',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.amber,
                    ),
                  ),
                )
              : TextField(
                  style: TextStyle(
                    fontFamily: 'DroidKufi',
                  ),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: widget.inputType,
                    labelStyle: TextStyle(
                      fontFamily: 'DroidKufi',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.amber,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
