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
    return new AnimatedCircularChart(
    key: _chartKey,
    size:MediaQuery.of(context).size*.5,
    initialChartData: data,
    chartType: CircularChartType.Radial,

  );
  }
}
// const Size(200.0, 200.0)