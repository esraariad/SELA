import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget{ 
    _HomeTab createState() => _HomeTab();

}

class _HomeTab extends State<HomeTab>{
 Widget loginButton(){
   return   Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      child: Center(
       
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[  
 Center(
              child: Container(
                height: 200,
                width: 200,
                child: Card(
                       color: Colors.purpleAccent,
                                  child: Center(
                                    child: Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'DroidKufi'),
                  ),
                                  ),
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
 }
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      body: Container(
      decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/1.png"), fit: BoxFit.cover)),
     child: Expanded(
            child: ListView(
         children: <Widget>[
          
          loginButton(),
          
         ],
       ),
     ),
     
      ),
    )
    
    ;
  }
}
