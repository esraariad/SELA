import 'package:flutter/material.dart';

class ChartText extends StatelessWidget {
  const ChartText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 40,
                  //margin: EdgeInsets.only(left:10),
                  child: Text('88%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'DroidKufi',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Text('facebook',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'DroidKufi',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 40,
                  child: Text('8%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'DroidKufi',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Text('facebook',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'DroidKufi',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 40,
                  child: Text('4%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'DroidKufi',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Text('facebook',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'DroidKufi',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
