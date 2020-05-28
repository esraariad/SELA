import 'package:flutter/material.dart';


class CustomerAppBar extends StatefulWidget {
  CustomerAppBar({Key key}) : super(key: key);

  @override
  _CustomerAppBarState createState() => _CustomerAppBarState();
}

class _CustomerAppBarState extends State<CustomerAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40,
     
     margin: EdgeInsets.only(right:5,left: 5),
     decoration: BoxDecoration(
       color: Colors.white,
       boxShadow: [
         BoxShadow(
       color: Colors.grey,
           offset:  Offset(0.0, 0.0),
    blurRadius: 0.0,
         )
       ]
     ),
                    child: ListView(children: <Widget>[

                      Container(
                        child: (TabBar(
                           
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                shape: BoxShape.rectangle,
                                

                               
                                color: Colors.blue[900]),
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            tabs: [
                              Tab(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("الكل",
                                      style: TextStyle(
                                        fontFamily: 'DroidKufi',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                  

                                      )
                                      ),
                                ),
                              ),
                              Tab(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("محتمل",
                                     style: TextStyle(
                                        fontFamily: 'DroidKufi',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                  

                                      )
                                      ),
                                ),
                              ),
                              Tab(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("زيارة",
                                     style: TextStyle(
                                        fontFamily: 'DroidKufi',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                  

                                      )
                                      ),
                                ),
                              ),
                              Tab(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("حجز",
                                      style: TextStyle(
                                        fontFamily: 'DroidKufi',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                  

                                      )
                                      ),
                                ),
                              ),
                            ])),
                      )
                    ]),
    );
  }
}