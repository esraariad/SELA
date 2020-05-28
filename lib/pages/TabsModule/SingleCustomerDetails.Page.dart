import 'package:Sela/Models/Customer.Model.dart';
import 'package:flutter/material.dart';
import 'package:Sela/Providers/Customesrs.dart';
import 'package:provider/provider.dart';
import '../../widgets/TabsModule/BottomBar.dart';
import '../../widgets/SingleCustomerModule/AppBar.dart';
import '../../widgets/SingleCustomerModule/Body.dart';

class CustomerDetailsPage extends StatefulWidget {
  CustomerDetailsPage({Key key}) : super(key: key);

  @override
  _CustomerDetailsPageState createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends State<CustomerDetailsPage>  with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final cusstomerid = routeArgs['id'];
  // print(cusstomerid);
    final customerData = Provider.of<Customers>(context);

    return  FutureBuilder<Customer>(
          future: customerData.fetchSingleCustomer(cusstomerid),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
            String  fullname(){
              if(snapshot.data.info==null||snapshot.data.info.fullName==null||snapshot.data.info.fullName==''){return 'noname';}
              return 
              snapshot.data.info.fullName
              ;
            }
              return Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: CustomAppBar(
                      title: fullname(),
                      isadd: false,
                    )),
                 body:SingleCustomerBody(customer:snapshot.data ,),
                bottomNavigationBar: BottomBar(
                  snapshot.data.info.contactInfo.phone[0].toString(),
                  snapshot.data.info.contactInfo.phone[0].toString()
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          })
    ;
  }
}
