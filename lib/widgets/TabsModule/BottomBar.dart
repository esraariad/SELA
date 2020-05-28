import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class BottomBar extends StatefulWidget {
 final String phone;
 final String whatsapp;

  BottomBar(
    this.phone,
    this.whatsapp
      );

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 3,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

 void call() {
    launch("tel:$widget.phone");
  }

  void whatsAppOpen() async {
    print('watsappppppppppppppppppppppppp');
    FlutterOpenWhatsapp.sendSingleMessage(widget.whatsapp, "Hello");
  }


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 95,
        child: ListView(children: <Widget>[
          Container(
            height: 35,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.5,
                  color: Colors.blue[800],
                  child: FlatButton(                  
                    onPressed: ()=>call(), 
                    child: ImageIcon(
                AssetImage('lib/assets/images/Group 887.png'),
                color: Colors.white,
              ),),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*.5,
                  color: Colors.green[600],
                  child: FlatButton(
                    onPressed: ()=>whatsAppOpen(), 
                    child:  ImageIcon(
                AssetImage('lib/assets/images/whatsapp-3.png'),
                color: Colors.white,
              ),))

              ],
            )
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black87),
             height: 60,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                // print(index);
                setState(() {
                  Navigator.pushNamed(context, '/MainPage');
                });
              },
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                insets: EdgeInsets.only(bottom: 58, right: 50, left: 50),
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
          ),
        ]),
      ),
    );
  }
}
