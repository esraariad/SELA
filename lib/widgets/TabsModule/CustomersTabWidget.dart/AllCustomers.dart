import 'package:Sela/Models/Customer.Model.dart';
import 'package:flutter/material.dart';
import 'package:Sela/Providers/Customesrs.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class CustomerList extends StatefulWidget {
  CustomerList({Key key}) : super(key: key);
  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  bool opencontacts = false;
  int indexOfTabbed;
  String callnumber;

  Widget leftArrow() {
    if (opencontacts == false) {
      return ImageIcon(
        AssetImage('lib/assets/images/arrow.png'),
        color: Colors.blue[900],
      );
    } else {
      return ImageIcon(
        AssetImage('lib/assets/images/left-arrow (2).png'),
        color: Colors.blue[900],
      );
    }
  }

  void call(String number) {
    launch("tel:$number");
  }

  void whatsAppOpen(String number) async {
    FlutterOpenWhatsapp.sendSingleMessage(number, "Hello");
  }

  Widget action(
    String actionname,
    String actionimage,
    Color containercolor,
  ) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              if (actionname == 'مكالمة') {
                call(callnumber);
              } else if (actionname == 'واتساب') {
                print('whatsaaaap');
                whatsAppOpen(callnumber);
              }
            },
            child: Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containercolor,
              ),
              child: ImageIcon(
                AssetImage(actionimage),
                color: Colors.white,
              ),
            ),
          ),
          Text(
            actionname,
            style: TextStyle(
                fontFamily: 'DroidKufi',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // opencontacts = false;
  }

  @override
  Widget build(BuildContext context) {
    final customerData = Provider.of<Customers>(context);

    return FutureBuilder<List<Customer>>(
        future: customerData.fetchAllCustomers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return
             Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (ctx, index) {
                    callnumber = snapshot
                        .data[index].info.contactInfo.phone[0].number
                        .toString();

                    return Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.of(ctx).pushNamed(
                                'CustomerDetailsPage',
                                arguments: {
                                  'id': snapshot.data[index].id,
                                },
                              );
                            },
                            // isThreeLine: true,
                            /////////////////////////////////////////////////////////////////////////////////////////////////
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              radius: 20,
                              child: Center(
                                child: Text(
                                    snapshot.data[index].info.fullName == ''
                                        ? ''
                                        : snapshot.data[index].info.fullName[0],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'DroidKufi',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            //////////////////////////////////////////////////////////////////////////////////////////
                            title: Text(
                                snapshot.data[index].info.fullName == ''
                                    ? 'noname'
                                    : snapshot.data[index].info.fullName,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'DroidKufi',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            /////////////////////////////////////////////////////////////////////////////////////////
                            subtitle: opencontacts == true &&
                                    index == indexOfTabbed
                                ? Container(
                                    child: Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                            snapshot.data[index].info.job ==
                                                    null
                                                ? 'no'
                                                : snapshot.data[index].info.job,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'DroidKufi',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            )),
                                      ),
                                      Center(
                                          child: Container(
                                              alignment: Alignment.center,
                                              //margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  action(
                                                    'مكالمة',
                                                    'lib/assets/images/Group 887.png',
                                                    Colors.blue,
                                                  ),
                                                  action(
                                                      'واتساب',
                                                      'lib/assets/images/whatsapp-3.png',
                                                      Colors.green),
                                                  action(
                                                      'متابعة',
                                                      'lib/assets/images/Group 904.png',
                                                      Colors.blue),
                                                  action(
                                                      'حجز',
                                                      'lib/assets/images/sand-clock (2).png',
                                                      Colors.amber),
                                                ],
                                              )))
                                    ],
                                  ))
                                : Text(
                                    snapshot.data[index].info.job == null
                                        ? 'no'
                                        : snapshot.data[index].info.job,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'DroidKufi',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
//////////////////////////////////////////////////////////////////////////////////////////////
                            trailing: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: IconButton(
                                  icon: leftArrow(),
                                  onPressed: () {
                                    setState(() {
                                      if (opencontacts == false) {
                                        indexOfTabbed = index;
                                        opencontacts = true;
                                      } else if (opencontacts == true &&
                                          indexOfTabbed != index) {
                                        indexOfTabbed = index;
                                        opencontacts = true;
                                      } else if (opencontacts == true &&
                                          indexOfTabbed == index) {
                                        opencontacts = false;
                                      } else
                                        opencontacts = true;
                                    });

                                    print(opencontacts);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: CircularProgressIndicator(
                //     value:.2,
                //     strokeWidth: 3,
                // //   valueColor: new Anima(Colors.green),

                ),
          );
        });
  }
}
