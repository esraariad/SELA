import 'package:flutter/material.dart';
import 'package:Sela/widgets/TabsModule/HomeTabWidgets/Statistics.dart';
import 'package:Sela/widgets/TabsModule/HomeTabWidgets/TextNextToChart.dart';
import 'package:Sela/widgets/TabsModule/HomeTabWidgets/chart.dart';

class HomeTab extends StatefulWidget {
  _HomeTab createState() => _HomeTab();
}

class _HomeTab extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height-Scaffold.of(context).appBarMaxHeight-60;
    return Container(
      height: deviceheight ,
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 242, 242, 0.0),
      ),
      padding: const EdgeInsets.only(right:10.0, left: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          
          //shrinkWrap: true,
          children: <Widget>[
           Container(
             height: 35,
             alignment: Alignment.centerRight,
               // height: deviceheight * .1,
                margin: EdgeInsets.only(top: deviceheight *.0001),
                child: Text('العملاء حسب المصدر',
                    style: TextStyle(
                      
                        fontFamily: 'DroidKufi',
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            Divider(
                height: deviceheight *.0001,
              ),
           Expanded(
             flex:2 ,
                          child: Container(
              // height: deviceheight*.397,
                decoration: BoxDecoration(),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: ChartText(),
                    ),
                    Expanded(
                      child: Chart(),
                      flex: 2,
                    )
                  ],
                ),
              ),
            ),
            Divider(
                height: deviceheight* .0001,
              ),
           Container(
             alignment: Alignment.centerRight,
                height: 30,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('احصائيات',
                    style: TextStyle(
                        fontFamily: 'DroidKufi',
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
             Divider(
                height:deviceheight * .0001,
              ),
           Expanded(
             flex:5 ,
                          child: Container(
              //  height: deviceheight*.4,
                child: Statistics()),
            ),
          ],
        ),
      ),
    );
  }
}
