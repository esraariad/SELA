import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../Models/http_exption.dart';
import '../Models/constants.dart';

class AuthProvider with ChangeNotifier {
  String token;
  bool success;
  bool get isAuth {
    return token != null;
  }

  Future<void> login(String email, String password) async {
    final String url = Const.url+'/settings/user/login';
    final headers = {
      'Accept': 'application/json',
      'authorization': 'pass your key(optional)'
    };

    final response = await http.post(
      url,
      headers: headers,
      body: {
        'email':email,
        'password': password,
      },
    );
    token = json.decode(response.body)['token'].toString();
    notifyListeners();
    print(json.decode(response.body));
   // print(isAuth);
     success = json.decode(response.body)['success'];
     print(success);
    if (success == false) {
     // throw new Exception("Error while fetching data");
    throw HttpException(json.decode(response.body)['message']);
    }
 
      
    
  }
}



