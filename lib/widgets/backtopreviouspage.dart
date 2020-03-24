
//import 'package:Sela/pages/login.page.dart';
import 'package:flutter/material.dart';

void navigation(BuildContext context , page){
//Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page()));
 Navigator.pushNamed(context, '/'+page);
}



class BackToPreviousPage extends StatefulWidget{
 _BackToPreviousPage createState() =>_BackToPreviousPage();

 final String backTo;
  BackToPreviousPage(this.backTo); 
}
 class _BackToPreviousPage extends State <BackToPreviousPage>{
@override


Widget build(BuildContext context) {
  return
  Center(
child:  FlatButton(
          onPressed: (){
           navigation(context,widget.backTo) ;
          },
          child: Text(
            'العودة للصفحة السابقة',
            style: TextStyle(
              color: Colors.white,
            decoration: TextDecoration.underline,
            fontFamily: 'DroidKufi',
            fontSize:15,
            ),
            
            textAlign: TextAlign.right,
          ),
        ),
  )
  
  
  
  
  
   ;
}
 }