import 'package:flutter/material.dart';
import 'package:Sela/widgets/backtopreviouspage.dart';
import 'package:Sela/mixins/validation_mixin.dart';

class NewPasswordForm extends StatefulWidget {
  _NewPasswordForm createState() => _NewPasswordForm();
}

class _NewPasswordForm extends State<NewPasswordForm> with ValidationMixin {
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  String newPass = '';
  String newPassConfirm = '';

  Widget newPassFild(String label) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: _pass,
        validator: validtePasword,
        onSaved: (value) {
          print('pass' + value);

          newPass = value;
        },
        
        textDirection: TextDirection.rtl,
       obscureText: true,
        style: TextStyle(
          fontFamily:'Arial' ,
          color: Colors.black,
          decorationColor: Colors.white,
          fontSize: 25, //Font color change
        ),
        textAlign: TextAlign.right,
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,

          filled: true,
          fillColor: Colors.white,
          labelText: label,
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
          hintText: 'أدخل كلمة السر ',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
           prefix: Padding(
              padding: const EdgeInsets.only( left:10.0),
              child: Text(label,
           style: TextStyle(
                
                fontFamily: 'DroidKufi',
                fontSize: 10,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              )),
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
           errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
          ),
          helperText: 'يجب أن تحتوي كلمة السر على',
          helperStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 12,
            fontWeight: FontWeight.w200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }

  Widget newPassFildConfirm(String label) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: _confirmPass,
        validator: (value) {
          if (value != _pass.text) {
            return 'يجب أن تكون كلمتي السر متطابقتين';
          }
          return null;
        },
        onSaved: (value) {
          print('passconfirm' + value);

          newPassConfirm = value;
        },
        textDirection: TextDirection.rtl,
        obscureText: true,
        style: TextStyle(
          fontFamily:'Arial' ,
          color: Colors.black,
          decorationColor: Colors.white,
          fontSize: 25, //Font color change
        ),
        textAlign: TextAlign.right,
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: Colors.white,
          labelText: label,
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
           prefix: Padding(
              padding: const EdgeInsets.only( left:10.0),
              child: Text(label,
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
            Icons.lock,
            color: Colors.amber,
          ),
           errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
          ),
          helperText: 'يجب أن تكون كلمتي السر متطابقتين',
          helperStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 12,
            fontWeight: FontWeight.w200,
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
              _formKey.currentState.save();
              print('we are ready to add them to api');
             Navigator.pushNamed(context,'/PAsswordChangedSuccessfuly');

          }
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
            newPassFild('كلمة السر الجديدة'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            newPassFildConfirm('إعادة ادخال كلمة السر'),
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
