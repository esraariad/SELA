import 'package:flutter/material.dart';
import 'package:Sela/pages/TabsModule/CalendarTab.page.dart';
import 'package:Sela/pages/TabsModule/MenuTab.page.dart';
import 'package:Sela/pages/TabsModule/ProjectsTab.page.dart';
import 'package:Sela/pages/TabsModule/HomeTAbe.page.dart';
import 'package:Sela/pages/TabsModule/CustomersTab.page.dart';

// import 'package:line_icons/line_icons.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

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
            actions: <Widget>[
              IconButton(
             icon: Icon(Icons.notifications),
             onPressed: ()=>{},
           ),
            IconButton(icon: Icon(Icons.search),
              onPressed: () {
              
              })
            ],
         ),
          body: TabBarView(
            children: [
              MenuTab(),
              HomeTab(),
              CalendarTab(),
              ProjectsTab(),
              CustomerTab(),
            ],
          ),
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

//////////////////////////////////////////////////////////////////////////////////////////

// int _selectedIndex = 0;
// static  List<Widget> _widgetOptions = <Widget>[
//  MenuTab(),
//  HomeTab(),
//  CalendarTab(),
//  ProjectsTab(),
//  CustomerTab(),

// ];

// // void _onItemTapped(int index) {
// //   setState(() {
// //     _selectedIndex = index;
// //   });
// // }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       actions: <Widget>[
//         Text('appbar')
//       ],
//     ),
//     body:_widgetOptions[_selectedIndex],
//     bottomNavigationBar: AppBar(
//       actions: <Widget>[

//       ],
//     ),

//   ) ;
// }}

//////////////////////////////////////////////////////////////////////////////////
///: Directionality(
//   textDirection: TextDirection.rtl,
//   child: BottomNavigationBar(
//     showSelectedLabels: false,
//     showUnselectedLabels: false,
//     backgroundColor: Colors.grey[850],
//     selectedItemColor: Colors.amber,
//     unselectedItemColor: Colors.white,
//     type: BottomNavigationBarType.fixed,
//     currentIndex: _selectedIndex,
//     onTap: _onItemTapped,

//     items:  <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         title: Text(''),

//         icon:Container(
//           decoration: BoxDecoration(
//             border: Border(top: BorderSide( color:Colors.amber , width:3))
//           ),
//           child:  ImageIcon(
//           AssetImage('lib/assets/images/menu.png'),
//         ),)
//       ),
//       BottomNavigationBarItem(
//         title: Text(''),
//         icon: ImageIcon(
//           AssetImage('lib/assets/images/home.png'),
//         ),
//       ),
//       BottomNavigationBarItem(
//         title: Text(''),
//         icon: ImageIcon(
//           AssetImage('lib/assets/images/calendar.png'),
//         ),
//       ),
//       BottomNavigationBarItem(
//         title: Text(''),
//         icon: ImageIcon(
//           AssetImage('lib/assets/images/layers.png'),
//         ),
//       ),
//       BottomNavigationBarItem(
//         title: Text(''),
//         icon: ImageIcon(
//           AssetImage('lib/assets/images/user.png'),
//         ),
//       ),
//     ],

//   ),
// )
////////////////////////////////////////////////////////////////////////////////////
/// // // Create a tab controller
// TabController controller;

// @override
// void initState() {
//   super.initState();

//   // Initialize the Tab Controller
//   controller = TabController(length: 5, vsync: this);
// }

// @override
// void dispose() {
//   // Dispose of the Tab Controller
//   controller.dispose();
//   super.dispose();
// }

// @override
// Widget build(BuildContext context) {
//   return widget(
//         child: Scaffold(
//       // Appbar
//       appBar: AppBar(
//         // Title
//         title: Text("Using Bottom Navigation Bar"),
//         // Set the background color of the App Bar
//         backgroundColor: Colors.blue,
//       ),
//       // Set the TabBar view as the body of the Scaffold
//       body: TabBarView(
//         // Add tabs as widgets
//         children: <Widget>[
//           MenuTab(),
//           HomeTab(),
//           CalendarTab(),
//           ProjectsTab(),
//           CustomerTab(),
//         ],
//         // set the controller
//         controller: controller,
//       ),
//       // Set the bottom navigation bar
//       bottomNavigationBar: Material(
//         // set the color of the bottom navigation bar
//         color: Colors.blue,
//         // set the tab bar as the child of bottom navigation bar
//         child: Directionality(
//           textDirection: TextDirection.rtl,
//           child: TabBar(
//             tabs: <Tab>[
//               Tab(
//                   icon: ImageIcon(
//                 AssetImage('lib/assets/images/menu.png'),
//               )),
//               Tab(
//                   icon: ImageIcon(
//                 AssetImage('lib/assets/images/home.png'),
//               )),
//               Tab(
//                   icon: ImageIcon(
//                 AssetImage('lib/assets/images/calendar.png'),
//               )),
//               Tab(
//                   icon: ImageIcon(
//                 AssetImage('lib/assets/images/layers.png'),
//               )),
//               Tab(
//                   icon: ImageIcon(
//                 AssetImage('lib/assets/images/user.png'),
//               )),
//             ],
//             // setup the controller
//             controller: controller,
//           ),
//         ),
//       ),
//     ),
//   );
// }
