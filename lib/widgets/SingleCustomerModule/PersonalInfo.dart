import 'package:flutter/material.dart';
import '../../Models/Customer.Model.dart';

class PersonalInfo extends StatefulWidget {
  final Customer customer;

  PersonalInfo({this.customer});

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  bool opencontacts = false;
  Widget leftArrow() {
    if (opencontacts == false) {
      return ImageIcon(
        AssetImage('lib/assets/images/arrow.png'),
        color: Colors.black,
      );
    } else {
      return ImageIcon(
        AssetImage(
          'lib/assets/images/left-arrow (2).png',
        ),
        color: Colors.black,
      );
    }
  }

  TextStyle mytextStyle() {
    return TextStyle(
      fontSize: 12,
      fontFamily: 'DroidKufi',
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width2 = MediaQuery.of(context).size.width * .8 - 150;
    String country() {
      if (widget.customer.info == null ||
          widget.customer.info.location == null) {
        return 'مصر';
      } else if (widget.customer.info.location.country == null ||
          widget.customer.info.location.country == '') {
        return 'مصر';
      }
      return widget.customer.info.location.country;
    }

    String city() {
      if (widget.customer.info == null ||
          widget.customer.info.location == null) {
        return 'الفيوم ';
      } else if (widget.customer.info.location.city == null ||
          widget.customer.info.location.city == '') {
        return 'الفيوم ';
      }
      return widget.customer.info.location.city;
    }

    String address() {
      if (widget.customer.info == null ||
          widget.customer.info.location == null) {
        return 'الفيوم ';
      } else if (widget.customer.info.location.address == null ||
          widget.customer.info.location.address == '') {
        return 'الفيوم ';
      }
      return widget.customer.info.location.address;
    }

    String inCharge() {
      if (widget.customer.inCharge == null) {
        return 'ibrahim';
      } else if (widget.customer.inCharge.fullName == null ||
          widget.customer.inCharge.fullName == '') {
        return 'ibrahim';
      }
      return widget.customer.inCharge.fullName;
    }

    String regionOfInterest() {
      if (widget.customer.regionOfInterest == null ||
          widget.customer.regionOfInterest == '') {
        return 'ibrahim';
      }
      return widget.customer.regionOfInterest;
    }

    String unitType() {
      if (widget.customer.unitType == null || widget.customer.unitType == '') {
        return 'ibrahim';
      }
      return widget.customer.unitType;
    }

    String landLine() {
      if (widget.customer.info == null ||
          widget.customer.info.contactInfo == null ||
          widget.customer.info.contactInfo.landLine == null ||
          widget.customer.info.contactInfo.landLine == '') {
        return '0240400';
      }
      return widget.customer.info.contactInfo.landLine;
    }

    String email() {
      if (widget.customer.info == null ||
          widget.customer.info.contactInfo == null ||
          widget.customer.info.contactInfo.email == null ||
          widget.customer.info.contactInfo.email == '') {
        return 'customer@gmail.com';
      }
      return widget.customer.info.contactInfo.email;
    }

    String job() {
      if (widget.customer.info == null ||
          widget.customer.info.contactInfo == null ||
          widget.customer.info.job == null ||
          widget.customer.info.job == '') {
        return 'مهندس';
      }
      return widget.customer.info.job;
    }

    List<dynamic> phone() {
      if (widget.customer.info == null ||
          widget.customer.info.contactInfo == null ||
          widget.customer.info.contactInfo.phone == null ||
          widget.customer.info.contactInfo.phone.isEmpty) {
        return ['0101010101'];
      }
      return widget.customer.info.contactInfo.phone;
    }

    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 242, 242, 0.0),
      ),
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 130,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.business_center,
                        color: Colors.grey,
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: width2,
                      child: Text(
                        job(),
                        style: mytextStyle(),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: width2,
                      child: Text(
                        email(),
                        style: mytextStyle(),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('بيانات الإتصال', style: mytextStyle()),
                  IconButton(
                    iconSize: 30,
                    icon: leftArrow(),
                    onPressed: () {
                      setState(() {
                        if (opencontacts == false) {
                          opencontacts = true;
                        } else {
                          opencontacts = false;
                        }
                      });

                      print(opencontacts);
                    },
                  )
                ],
              ),
            ),
            if (opencontacts)
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      // height: 20,
                      child: Text(
                        'الهاتف المحمول',
                        textAlign: TextAlign.right,
                        style: mytextStyle(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //   height: 100,
                      width: width2,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: phone().length,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top:2),
                              child: Text(
                                phone()[index].number,
                                textAlign: TextAlign.start,
                                style: mytextStyle(),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            SizedBox(
              height: 15,
            ),
            if (opencontacts)
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      child: Text(
                        ' الرقم الارضي',
                        style: mytextStyle(),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      width: width2,
                      alignment: Alignment.center,
                      child: Text(
                        landLine(),
                        style: mytextStyle(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "العنوان",
                style: mytextStyle(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                country() + ' - ' + city() + ' - ' + address(),
                style: mytextStyle(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    child: Text(
                      ' الموظف المسئول',
                      style: mytextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: width2,
                    alignment: Alignment.center,
                    child: Text(
                      inCharge(),
                      style: mytextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    child: Text(
                      ' المنطقة المهتم بها',
                      style: mytextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: width2,
                    alignment: Alignment.center,
                    child: Text(
                      regionOfInterest(),
                      style: mytextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    child: Text(
                      'نوع الوحده المهتم بها',
                      style: mytextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: width2,
                    alignment: Alignment.center,
                    child: Text(
                      unitType(),
                      style: mytextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
