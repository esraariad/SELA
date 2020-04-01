import 'package:flutter/material.dart';
import 'package:Sela/mixins/validation_mixin.dart';

class LoginForm extends StatefulWidget {
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> with ValidationMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';
  String password = '';
  final TextEditingController _name = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  Widget nameFild() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: _name,
        validator: validateName,
        onSaved: (value) {
          print('name' + value);
          name = value;
        },
        style: TextStyle(
          fontFamily: 'DroidKufi',
          color: Colors.black,
          decorationColor: Colors.white, 
          letterSpacing:2,

        ),
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          

            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: Colors.white,
            labelText: 'الاسم',
            labelStyle: TextStyle(
              fontFamily: 'DroidKufi',
              fontSize: 17,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
            prefix: Padding(
              padding: const EdgeInsets.only( left:10.0),
              child: Text('الاسم',
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
              Icons.person,
              color: Colors.amber,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            )),
      ),
    );
  }

  Widget passwordFiled() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: _pass,
        validator: validtePasword,
        onSaved: (value) {
          print('name' + value);
          password = value;
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
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: Colors.white,
          labelText: 'كلمة السر ',
          labelStyle: TextStyle(
            fontFamily: 'DroidKufi',
            fontSize: 17,
            fontWeight: FontWeight.w200,
            color: Colors.black,
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
          prefix: Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text( 'كلمة السر',
            style: TextStyle(
              fontFamily: 'DroidKufi',
              fontSize: 10,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),),
          )
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

            Navigator.pushNamed(context, '/MainPage');
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'تسجيل الدخول',
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

  Widget forgotPassord() {
    return Center(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/ResetPassword');
        },
        child: Text(
          'هل نسيت كلمة السر؟',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
            fontFamily: 'DroidKufi',
            fontSize: 15,
          ),
          textAlign: TextAlign.right,
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            nameFild(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            passwordFiled(),
            forgotPassord(),
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
