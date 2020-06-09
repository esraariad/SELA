import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  _Statistics createState() => _Statistics();
}

class _Statistics extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    final itemWidth = (devicewidth / 2) - 20;
    
    final itemHeight = 135;
    return Container(
      child: GridView.count(
        childAspectRatio: (itemWidth / itemHeight)*1.05,
        shrinkWrap: true,
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[

          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topRight,
                    child: Text('المكالمات خلال الشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DroidKufi',
                            fontSize: 10,
                            color: Colors.black,
                            height: 1.2
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
                    child: ClipRect (
                                          child: Text('78',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DroidKufi',
                            fontSize: 15,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              )),
          Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
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
                    alignment: Alignment.topRight,
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
                    alignment: Alignment.topRight,
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
