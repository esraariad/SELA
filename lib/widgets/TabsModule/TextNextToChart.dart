import 'package:flutter/material.dart';



class ChartText extends StatelessWidget {
  const ChartText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    // margin: EdgeInsets.only(top:15, right:8),
                     child: Column(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.only(top: 15),

                           child:Row(children: <Widget>[
                            
                             Text('facebook',
                             style:TextStyle(
                               color: Colors.grey,
                               fontFamily: 'DroidKufi',
                               fontSize: 13,
                               fontWeight: FontWeight.bold,
                             
                             )
                             ),
                              Container(
                               height: 10,
                               width: 10,
                               decoration: BoxDecoration(
                                 color:Colors.green,
                                 shape:BoxShape.circle,
                                 

                               ),

                             ),
                           ],
                           )
                         ),
                         Container(
                            margin: EdgeInsets.only(top: 15),
                           child:Row(children: <Widget>[
                             
                             Text('facebook',
                             style:TextStyle(
                               color: Colors.grey,
                               fontFamily: 'DroidKufi',
                               fontSize: 13,
                               fontWeight: FontWeight.bold,
                             
                             )
                             ),
                             Container(
                                height: 10,
                               width: 10,
                               decoration: BoxDecoration(
                                 color:Colors.red,
                                 shape:BoxShape.circle,

                               ),

                             ),
                           ],
                           )
                         ),
                         Container(
                            margin: EdgeInsets.only(top: 15),
                           child:Row(children: <Widget>[
                            
                             Text('facebook',
                             style:TextStyle(
                               color: Colors.grey,
                               fontFamily: 'DroidKufi',
                               fontSize: 13,
                               fontWeight: FontWeight.bold,
                             
                             )
                             ),
                              Container(
                                height: 10,
                               width: 10,
                               decoration: BoxDecoration(
                                 color:Colors.yellow,
                                 shape:BoxShape.circle,

                               ),

                             ),
                           ],
                           )
                         ),
                         
                        
                       ],
                     ),
                   ) ;
  }
}