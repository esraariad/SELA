import 'Package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Actionss extends StatelessWidget {
  final  mail;
  Actionss({this.mail});
 final String x='engesraariad@gmail.com';
  void sendMail(){
    launch("mailto:$x");
  }

   
   Widget singleAction(String img , String label,Color containercolor ,Color imgcolor,  context){
     return
         Container(
             height: 100,
             width: 100,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    if (label=='ارسال ايميل')
                    {sendMail();}
                    else if(label=='حجز'){
                      Navigator.pushNamed(context, 'AddReservation');
                    }

                  },
                  child: Container(
                    height: 60,
                    width:60,                    
                    margin: EdgeInsets.all(5),
                   
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: containercolor,
                    ),
                    child:  ImageIcon(
                      
                      AssetImage(img),
                      color: imgcolor,
                      size: 70,
                    ),
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                      fontFamily: 'DroidKufi',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          )
     ;
   }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          singleAction('lib/assets/images/Group 918.png', 'ارسال ايميل',Colors.black,Colors.white,context),
          singleAction('lib/assets/images/sand-clock-6.png', 'حجز', Colors.amber,Colors.black,context),
          singleAction('lib/assets/images/Path 532.png', 'متابعة',Colors.blue,Colors.white,context),

        ],
      ),
    );
  }
}
