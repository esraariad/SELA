import 'package:flutter/material.dart';
import 'package:Sela/pages/TabsModule/CalendarTab.page.dart';
import 'package:Sela/pages/TabsModule/MenuTab.page.dart';
import 'package:Sela/pages/TabsModule/ProjectsTab.page.dart';
import 'package:Sela/pages/TabsModule/HomeTAbe.page.dart';
import 'package:Sela/pages/TabsModule/CustomersTab.page.dart';
import 'package:Sela/widgets/TabsModule/SearchBar.dart';

class MAinPAge extends StatefulWidget {
  _MAinPage createState() => _MAinPage();
}

class _MAinPage extends State<MAinPAge> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 3.0,
            title: Text('الصفحة الرئيسية',
              style: TextStyle(
                color:Colors.black,
                fontFamily: 'DroidKufi',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              ),
              // leading:  BackButton(
              //   color: Colors.black,
              // ),
            backgroundColor: Colors.white,
            actions: <Widget>[
             
             
              IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    showSearch(context: context, delegate: SearchData());
                  }),
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.black,
                onPressed: () => {},
              ),
            ],
          ), 
          /////////////////////////////////////////////////////////////////////////////////////
          body: TabBarView(
            children: [
              MenuTab(),
              HomeTab(),
              CalendarTab(),
              ProjectsTab(),
              CustomerTab(),
            ],
          ),

          /////////////////////////////////////////////////////////////////////////////////
          bottomNavigationBar: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: BoxDecoration(color: Colors.black87),
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.amber, width: 1.0),
                  insets: EdgeInsets.fromLTRB(50.0, 70.0, 50.0, 40.0),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.amber,
                indicatorColor: Colors.amber,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: ImageIcon(
                      AssetImage('lib/assets/images/menu.png'),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage('lib/assets/images/home.png'),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage('lib/assets/images/calendar.png'),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage('lib/assets/images/layers.png'),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage('lib/assets/images/user.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

