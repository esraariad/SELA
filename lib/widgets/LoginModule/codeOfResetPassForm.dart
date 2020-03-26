import 'package:flutter/material.dart';
import 'package:Sela/widgets/backtopreviouspage.dart';

class CodeResetPasswordForm extends StatefulWidget {
  _CodeResetPasswordForm createState() => _CodeResetPasswordForm();
}

class _CodeResetPasswordForm extends State<CodeResetPasswordForm>  {
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String code='';

  Widget codeFild() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        onSaved: (value){
          print('email'+value);
          code=value;
        },
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'DroidKufi',
          color: Colors.black,
          decorationColor: Colors.white, //Font color change
          //  backgroundColor: Colors.white, //T
        ),
        textAlign: TextAlign.right,
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'كود التأكيد',
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
          hintText: 'أدخل الكود الذي تم ارساله عبر الإلكتروني',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: Colors.black, width: 1.1),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.1),
          ),
          prefixIcon: Icon(
            Icons.receipt,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }

 
  Widget submitButton() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      child: FlatButton(
        onPressed: () {
         if( _formKey.currentState.validate()){
           _formKey.currentState.save();
           print('we are ready to add them to api');
     Navigator.pushNamed(context,'/NewPassword');

         }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'إرسال الكود',
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
    return Container(
      margin: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            codeFild(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            BackToPreviousPage('ResetPassword'),

            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
