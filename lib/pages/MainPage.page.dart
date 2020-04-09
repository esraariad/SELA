import 'package:flutter/material.dart';
import 'package:Sela/pages/TabsModule/CalendarTab.page.dart';
//import 'package:Sela/pages/TabsModule/MenuTab.page.dart';
import 'package:Sela/pages/TabsModule/ProjectsTab.page.dart';
import 'package:Sela/pages/TabsModule/HomeTAbe.page.dart';
import 'package:Sela/pages/TabsModule/CustomersTab.page.dart';
import 'package:Sela/widgets/TabsModule/SearchBar.dart';

class MAinPAge extends StatefulWidget {
  _MAinPage createState() => _MAinPage();
}

class _MAinPage extends State<MAinPAge> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;
  

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        //  DefaultTabController(
        //     length: 5,
        //     child:
        Scaffold(
      key: _scaffoldKey,

      appBar: AppBar(
        centerTitle: true,
        elevation: 3.0,
        title: Text(
          'الصفحة الرئيسية',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'DroidKufi',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        leading:  IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.black,
              onPressed: () {

              }
              ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                showSearch(context: context, delegate: SearchData());
              }),
          IconButton(
              icon: ImageIcon(AssetImage('lib/assets/images/menu.png')),
              color: Colors.black,
              onPressed: () {
                if(_scaffoldKey.currentState.isEndDrawerOpen){
                  Navigator.pop(context);
                }
                else
                _scaffoldKey.currentState.openEndDrawer();
              }),
        ],
      ),
//////////////////////////////////////////////////////////////////////////////////////////////
      endDrawer: Container(
        width: MediaQuery.of(context).size.width*.8,
       //height: MediaQuery.of(context).size.height-60,
      //  alignment: Alignment.topRight,
     // margin: EdgeInsets.only(bottom:75),

        child: Drawer(
          
          
          elevation: 2,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(top: 40, bottom: 30, right: 20, left: 20),
                  color: Colors.black87,
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 60,
                          width: 60,
                          // margin: EdgeInsets.only(top:20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('lib/assets/images/menuuser.png'),
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Text(' أحمد أحمد',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'DroidKufi',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                  )),
                              Text(' Sales Manger',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'DroidKufi',
                                    fontWeight: FontWeight.w200,
                                    fontSize: 11,
                                  ))
                            ],
                          )),
                       
                      Container(
                        width: MediaQuery.of(context).size.width*.3,
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _tabController.animateTo((_tabController.index + 1));
                              Navigator.pop(context);
                            }),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      children: <Widget>[
                        ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/home.png'),
                            color: Colors.black,
                          ),
                          title: Text('الصفحة الرئيسية',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _tabController.animateTo((0));
                            Navigator.pop(context);
                          },
                        ),
                         ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/useraccount.png'),
                            color: Colors.black,
                          ),
                          title: Text('الملف الشخصي',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            //Navigator.pushNamed(context, '/MainPage');
                             _tabController.animateTo((1));
                            Navigator.pop(context);
                          },
                        ),
                         ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/user.png'),
                            color: Colors.black,
                          ),
                          title: Text('العملاء',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _tabController
                                .animateTo((3));
                            Navigator.pop(context);
                          },
                        )
                        ,
                         ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/layers.png'),
                            color: Colors.black,
                          ),
                          title: Text('المشروعات',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _tabController
                                .animateTo((2));
                            Navigator.pop(context);
                          },
                        ),
                         ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/calendar.png'),
                            color: Colors.black,
                          ),
                          title: Text('المهام',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _tabController
                                .animateTo((1));
                            Navigator.pop(context);
                          },
                        ), ListTile(

                          leading: ImageIcon(
                            AssetImage('lib/assets/images/logout.png'),
                            color: Colors.black,
                          ),
                          title: Text('تسجيل الخروج',
                              style: TextStyle(
                                  fontFamily: 'DroidKufi',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _tabController
                                .animateTo((1));
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
        //  HomeTab(),
          HomeTab(),
          CalendarTab(),
          ProjectsTab(),
          CustomerTab(),
        ],
      ),
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////

      bottomNavigationBar: Directionality(
        

        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(color: Colors.black87),
          height:60,
          child: ListView(children: <Widget>[
            TabBar(
              
              controller: _tabController,
              onTap: (index) {
                // print(index);
                // if (index == 0) {
                //   _scaffoldKey.currentState.openEndDrawer();
                // }
              },
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                insets: EdgeInsets.only(bottom: 49, right: 50, left: 50),
                //  insets: EdgeInsets.symmetric(vertical:55.0)
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.amber,
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
              
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
                )
              ],
            ),
          ]),
        ),
      ),
      //)
    );
  }
}
