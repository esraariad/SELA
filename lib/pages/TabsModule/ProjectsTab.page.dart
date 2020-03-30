import 'package:flutter/material.dart';

class ProjectsTab extends StatefulWidget{ 
    _ProjectsTab createState() => _ProjectsTab();

}

class _ProjectsTab extends State<ProjectsTab>{
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
            Text(
              'PROJECTS',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'DroidKufi'),
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
