import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
//    final TabController tabControllerr ;
//  CustomTabBar({this.tabControllerr});


  @override
  Widget build(BuildContext context) {
    final devicesize=MediaQuery.of(context).size;
    TextStyle textStyle(){
      return  TextStyle(
                            fontFamily: 'DroidKufi',
                            fontWeight: FontWeight.bold,
                            fontSize: devicesize<Size(400,700)?6.8:12,
                          );
    }
    return Directionality(
      textDirection: TextDirection.rtl,
          child: Container(
        height: 45,
        margin: EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black87,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
              )
            ]),
        child: Directionality(
          textDirection: TextDirection.rtl,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         color: Colors.black,
                         width: 3
                       )
                      ),
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("البيانات الشخصية",
                            style:textStyle()
                          
                            ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("المتابعات",
                            style: textStyle()
                            
                            ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("الحجوزات",
                            style: textStyle()
                           
                            ),
                      ),
                    )
                  ]),
        )
      ),
    );
  }
}
