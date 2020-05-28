//import 'package:Sela/widgets/TabsModule/TextNextToChart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';



class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();
List<CircularStackEntry> data = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
      new CircularSegmentEntry(1.0, Colors.red, rankKey: 'Q1'),
      new CircularSegmentEntry(2.0, Colors.yellow, rankKey: 'Q2'),
      new CircularSegmentEntry(3.0, Colors.green, rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

@override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    // final devicesize=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:15),
     // height:double.infinity ,
      child: Stack(
        //fit: StackFit.loose,
        
      children: <Widget>[
      
   Center(
       child: new AnimatedCircularChart(
         //holeRadius: 15,
        key: _chartKey,
        size:Size(150,150),
       // devicesize*.35,
        //MediaQuery.of(context).size*.5,
        initialChartData: data,
        chartType: CircularChartType.Radial,
        holeLabel: '88%',
        labelStyle:TextStyle(
         
                fontSize: 30.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ) ,

       //percentageValues: true,
       edgeStyle: SegmentEdgeStyle.round,



  ),
   ),
   Center(
       child: Container(
         margin: EdgeInsets.only(top:50),
         child: Text(
           "facebook",
           style: TextStyle(
             fontSize: 10.0,
             color: Colors.grey,
             fontWeight: FontWeight.bold
           ),
         ),
       ),
   )
  ]
  ),
    );
  }
}
