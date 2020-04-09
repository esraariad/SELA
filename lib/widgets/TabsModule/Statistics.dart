import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  _Statistics createState() => _Statistics();
}

class _Statistics extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    final itemWidth = devicewidth / 2 ;
    final itemHeight = 150;
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
        shrinkWrap: true,
        crossAxisCount: devicewidth > 500 ? 4 : 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: <Widget>[
          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 50),
                    child: Text('المكالمات خلال الشهر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 10,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: ImageIcon(
                      AssetImage('lib/assets/images/call.png'),
                      size: 50,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Text('78',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    color: Colors.white,
                    child: Text('زيارات خلال الشهر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 10,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: ImageIcon(
                      AssetImage('lib/assets/images/teamwork.png'),
                      size: 50,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Text('78',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 50),
                    child: Text('معاينات خلال الشهر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 10,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: ImageIcon(
                      AssetImage('lib/assets/images/location.png'),
                      size: 50,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Text('78',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 50),
                    child: Text('الحجوزات',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 10,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: ImageIcon(
                      AssetImage('lib/assets/images/sandclock.png'),
                      size: 50,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Text('78',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DroidKufi',
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
