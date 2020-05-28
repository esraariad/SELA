import 'package:flutter/material.dart';
import '../../Models/Follow-up.Model.dart';
import 'package:provider/provider.dart';
import '../../Providers/FollowUpProvider.dart';

class FollowUps extends StatelessWidget {
  final String id;
  FollowUps({this.id});
  Widget icontype(String actionType) {
    if (actionType == 'رسالة واتساب') {
      return Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green),
          child: ImageIcon(AssetImage('lib/assets/images/whatsapp-3.png'),
              color: Colors.white));
    } else if (actionType == 'مكالمة') {
      return Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.purple),
          child: ImageIcon(
            AssetImage('lib/assets/images/Group 887.png'),
            color: Colors.white,
          ));
    } else
      return Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.blue[900]),
          child: ImageIcon(
            AssetImage('lib/assets/images/locations.png'),
            color: Colors.white,
          ));
  }


TextStyle myTextStyle(){
  return 
  TextStyle(
    fontFamily:'DroidKufi',
    fontSize:12,

  )
  ;
}
  @override
  Widget build(BuildContext context) {
    var followdata = Provider.of<FollowUpProvider>(context);
    return FutureBuilder<List<FollowUp>>(
        future: followdata.fetchFollowUps(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) {
                      //       String datte=(snapshot.data[index].startAt.date).replaceAllMapped('/', (match) => '');
                      //       if(datte.length==6)
                      // print(datte);
                      //    DateTime  date=DateTime.parse(datte);
                      //        print(date.day);
                      return Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                            snapshot.data[index].startAt.date,
                                            style:myTextStyle(),
                                            ),
                                            ),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                            snapshot.data[index].startAt.time
                                            ,  style:myTextStyle(),)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                            snapshot.data[index].startAt.date,
                                              style:myTextStyle(),)),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(snapshot
                                            .data[index].client.info.fullName,
                                              style:myTextStyle(),)),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: icontype(
                                      snapshot.data[index].activityType),
                                )
                              ]));
                    }));
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
