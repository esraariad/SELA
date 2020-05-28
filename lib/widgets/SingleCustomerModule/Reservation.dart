import 'package:flutter/material.dart';
import '../../Models/Reservation.Model.dart';
import 'package:provider/provider.dart';
import '../../Providers/Reservation.dart';

class CustomerReservation extends StatefulWidget {
  final String id;
  final String incharge;
  CustomerReservation({this.id, this.incharge});

  @override
  _CustomerReservationState createState() => _CustomerReservationState();
}

class _CustomerReservationState extends State<CustomerReservation> {
  bool opendetails = false;
  int currentindex;

  @override
  Widget build(BuildContext context) {
    var reservdata = Provider.of<ReservationProvider>(context);
    double width = MediaQuery.of(context).size.width;
    Widget circleIcon() {
      return Container(
        width: width * .1,
        child: ImageIcon(
          AssetImage('lib/assets/images/circle1.png'),
          color: Colors.amber,
          size: 20,
        ),
      );
    }

    TextStyle myTextStyle(int x){
      return 
  TextStyle(
    fontFamily:'DroidKufi',
    fontSize:12,
    fontWeight: x==1?FontWeight.normal:FontWeight.bold

  )
  ;
    }

    return FutureBuilder<List<Reservation>>(
        future: reservdata.fetchReservations(widget.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data.length,
                            itemBuilder: (ctx, index) {
                              return Container(
                                  margin: EdgeInsets.all(10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(snapshot
                                                .data[index].project.title,
                                                style: myTextStyle(1),
                                                ),
                                            IconButton(
                                                icon: ImageIcon(
                                                  AssetImage(
                                                      'lib/assets/images/left-arrow (2).png'),
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    if (opendetails == false) {
                                                      currentindex = index;
                                                      opendetails = true;
                                                    } else if (opendetails ==
                                                            true &&
                                                        currentindex != index) {
                                                      currentindex = index;
                                                      opendetails = true;
                                                    } else if (opendetails ==
                                                            true &&
                                                        currentindex == index) {
                                                      opendetails = false;
                                                    } else
                                                      opendetails = true;
                                                  });
                                                })
                                          ],
                                        ),
                                        if (opendetails == true &&
                                            currentindex == index)
                                          Row(
                                            children: [
                                              circleIcon(),
                                              Container(
                                                  width: width * .4,
                                                  child: Text('رقم النموذج',
                                                   style: myTextStyle(2)
                                                  )),
                                              Container(
                                                width: width * .4,
                                                child: Text(snapshot
                                                    .data[index].model.name,
                                                     style: myTextStyle(1)
                                                    ),
                                              )
                                            ],
                                          ),
                                        if (opendetails == true &&
                                            currentindex == index)
                                          Row(
                                            children: [
                                              circleIcon(),
                                              Container(
                                                  width: width * .4,
                                                  child: Text('رقم الطابق',
                                                   style: myTextStyle(2)
                                                  )),
                                              Container(
                                                width: width * .4,
                                                child: Text(snapshot
                                                    .data[index].model.floor
                                                    .toString(),
                                                     style: myTextStyle(1)
                                                    ),
                                              )
                                            ],
                                          ),
                                        if (opendetails == true &&
                                            currentindex == index)
                                          Row(
                                            children: [
                                              circleIcon(),
                                              Container(
                                                  width: width * .4,
                                                  child: Text(' تاريخ الحجز',
                                                   style: myTextStyle(2)
                                                  )),
                                              Container(
                                                width: width * .4,
                                                child: Text(snapshot
                                                    .data[index].createdAt
                                                    .substring(0, 10),
                                                     style: myTextStyle(1)
                                                    ),
                                              )
                                            ],
                                          ),
                                        if (opendetails == true &&
                                            currentindex == index)
                                          Row(
                                            children: [
                                              circleIcon(),
                                              Container(
                                                  width: width * .4,
                                                  child:
                                                      Text(' الموظف المسئول',
                                                       style: myTextStyle(2)
                                                      )),
                                              Container(
                                                  width: width * .4,
                                                  child: Text(widget.incharge,
                                                   style: myTextStyle(1)
                                                  ))
                                            ],
                                          )
                                      ],
                                    ),
                                  ));
                            }),
                      );
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
