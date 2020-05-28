import 'Package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isadd;
   CustomAppBar({ this.title,this.isadd});

  
  @override
  Widget build(BuildContext context) {

     Widget lead(){
     return
     isadd?Center(
       child: Container(
         height: 30,
         width: 35,
         
         decoration: BoxDecoration(
         color: Colors.redAccent,
         borderRadius: BorderRadius.circular(10)
         ),
         alignment: Alignment.center,
         child: InkWell(
           child: Icon(Icons.close),
           onTap:() {
                Navigator.pop(context); }
         )
       ),
     ):
     IconButton(

            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            })
     ;
   }


    return  AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        elevation: 3.0,
        title: Container(
          alignment: Alignment.centerRight,
          child: Text(
           title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'DroidKufi',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        leading: lead(),
       
      );
  }
}