import 'package:flutter/material.dart';
import '../../widgets/SingleCustomerModule/Actions.dart';
import '../../widgets/SingleCustomerModule/TabBar.dart';
import '../../Models/Customer.Model.dart';
import 'PersonalInfo.dart';
import 'FollowUps.dart';
import 'Reservation.dart';

class SingleCustomerBody extends StatefulWidget {
  //final AsyncSnapshot snap;
  final Customer customer;
  SingleCustomerBody({this.customer}) ;

  @override
  _SingleCustomerBodyState createState() => _SingleCustomerBodyState();
}

class _SingleCustomerBodyState extends State<SingleCustomerBody>
    with SingleTickerProviderStateMixin {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Expanded(flex: 1, child: Actionss(mail: widget.customer.info.contactInfo.email,)),
          Expanded(
            flex: 4,
            child: Container(
                child: Column(children: [
              CustomTabBar(),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TabBarView(children: [
                   PersonalInfo(customer:widget.customer,),
                    FollowUps(id: widget.customer.id,),
                   CustomerReservation(id: widget.customer.id, incharge: widget.customer.inCharge.fullName,),
                  ]),
                ),
              ),
            ])),
          )
        ],
      ),
    );
  }
}
