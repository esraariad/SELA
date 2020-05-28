import 'package:flutter/material.dart';
import 'package:Sela/widgets/TabsModule/CustomersTabWidget.dart/CustomersAppBar.dart';
import 'package:Sela/widgets/TabsModule/CustomersTabWidget.dart/AllCustomers.dart';
// import 'package:provider/provider.dart';
// import 'package:Sela/Providers/Customesrs.dart';

class CustomerTab extends StatefulWidget {
  _CustomerTab createState() => _CustomerTab();
}

class _CustomerTab extends State<CustomerTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height -
        Scaffold.of(context).appBarMaxHeight -
        60;

    return DefaultTabController(
      length: 4,
      child: Container(
        height: deviceheight,
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 0.0),
        ),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomerAppBar(),
            Expanded(
              child: TabBarView(children: [
                CustomerList(),
                CustomerList(),
                CustomerList(),
                CustomerList(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: double.infinity,
//             margin: EdgeInsets.only(top: 20),
//             child: SingleChildScrollView(
//                 child: Column(
//               //  mainAxisSize: MainAxisSize.min,
//               // mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 // Expanded(
//                 //   flex: 1,
//                 //  child:
//                 PreferredSize(
//                     preferredSize: Size.fromHeight(50),
//                     child: CustomerAppBar())
//                 //  )
//                 ,
//                 Divider(
//                   height: 20,
//                   color: Colors.white,
//                 ),
//                 Expanded(
//                   //  flex:10,
//                   // flex: 1,

//                   child: SizedBox(
//                     height: 300,
//                     child: TabBarView(children: [
//                       CustomerList(),
//                       CustomerList(),
//                       CustomerList(),
//                       CustomerList(),
//                     ]),
//                   ),
//                 ),
//               ],
//             )),
//           )
