import 'package:flutter/material.dart';
import 'package:Sela/widgets/backtopreviouspage.dart';
import 'package:Sela/mixins/validation_mixin.dart';

class NewPasswordForm extends StatefulWidget {
  _NewPasswordForm createState() => _NewPasswordForm();
}

class _NewPasswordForm extends State<NewPasswordForm> with ValidationMixin {
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String emailAnotherTime = '';
  bool identical =false;

 Widget emailFild( String label) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator: validtePasword,
        onSaved: (value) {

 print('email' + value);
        
          email = value;
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
          labelText: label,
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
          hintText: 'أدخل البريد الإلكتروني',
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
            Icons.lock,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
  Widget ensureemailFild( String label) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator: (value){
          if(identical==false){
            return 'يجب أن تكون كلمتي السر متطابقتين';
          }
                    return null;
        },
        onSaved: (value) {

   print('email2' + value);
        
          emailAnotherTime = value;
         
        },
        onChanged:  (value){
          if(value==email){
            identical=true;
            return 'يجب أن تكون كلمتي السر متطابقتين';
          }
              return null;
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
          labelText: label,
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
          hintText: 'أدخل البريد الإلكتروني',
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
            Icons.lock,
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
          if (_formKey.currentState.validate()) {
            if(identical==true){
            _formKey.currentState.save();
            print('we are ready to add them to api');
          }}
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'تأكيد كلمة السر',
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
            emailFild('كلمة السر الجديدة'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            emailFild('إعادة ادخال كلمة السر'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            BackToPreviousPage('Login'),
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
