import 'package:flutter/material.dart';
import 'package:Sela/widgets/backtopreviouspage.dart';
import 'package:Sela/mixins/validation_mixin.dart';

class ResetPasswordForm extends StatefulWidget {
  _ResetPasswordForm createState() => _ResetPasswordForm();
}

class _ResetPasswordForm extends State<ResetPasswordForm> with ValidationMixin {
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String email='';

  Widget emailFild() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator: validateEmail ,

        onSaved: (value){
          print('email'+value);
          email=value;
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
          floatingLabelBehavior: FloatingLabelBehavior.never,

          filled: true,
          fillColor: Colors.white,
          labelText: 'البريد الإلكتروني',
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
           prefix: Padding(
              padding: const EdgeInsets.only( left:10.0),
              child: Text('البريد الإلكتروني',
           style: TextStyle(
                
                fontFamily: 'DroidKufi',
                fontSize: 10,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              )),
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
            Icons.email,
            color: Colors.amber,
          ),
           errorStyle: TextStyle(
            fontFamily: 'DroidKufi',
            color:Colors.amber,
            fontSize:12,
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
            Navigator.pushNamed(context,'/CodeResetPassword');
         }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'تغيير كلمة السر',
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
            emailFild(),
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
