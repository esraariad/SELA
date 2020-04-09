import 'package:flutter/material.dart';
import 'package:Sela/widgets/TabsModule/Statistics.dart';
import 'package:Sela/widgets/TabsModule/chart.dart';
import 'package:Sela/widgets/TabsModule/TextNextToChart.dart';

class HomeTab extends StatefulWidget {
  _HomeTab createState() => _HomeTab();
}

class _HomeTab extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
     
    decoration: BoxDecoration(
      color:Color.fromRGBO(	242, 242, 242,  0.0),
      ),
     padding: const EdgeInsets.all(20.0),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
           margin: EdgeInsets.only(bottom:10),
            child: Text('العملاء حسب المصدر',
                style: TextStyle(
                  fontFamily: 'DroidKufi',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
                ),
          ),
          Container(
             height: MediaQuery.of(context).size.height*.2,
            decoration: BoxDecoration(
             

            ),
             child:Row(
               children: <Widget>[
                 Expanded(
                     flex: 1,

                   child:ChartText()
               
                 ),
                   Expanded(
                     child:Chart() ,
                 flex: 4,
                 )
               ],
             ),
           

          ),
          Container(
            margin: EdgeInsets.only(top:10,bottom:10),
            child: Text('احصائيات',
                style: TextStyle(
                  fontFamily: 'DroidKufi',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
                ),
          ),
          Statistics(),
       
        ],
      ),
    ),)
    ;
    
    
  }
}
