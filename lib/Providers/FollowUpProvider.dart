import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'auth.dart';
import '../Models/constants.dart';
import '../Models/Follow-up.Model.dart';


class FollowUpProvider with ChangeNotifier {
List< FollowUp> followUps=[];
  String authToken;
FollowUpProvider(this.authToken);

void update(AuthProvider auth){
  authToken=auth.token;
}

Future < List<FollowUp>> fetchFollowUps(String id) async {
  var response = await http.get(Const.url+'/client/followup/$id',headers: {
    'x-auth-token':authToken
  });
  if (response.statusCode == 200) {
   
   var jsonResponse=json.decode(response.body) ;
  // print(jsonResponse);
   var jsonResponseList=jsonResponse['message'] as List;
    followUps = jsonResponseList.map<FollowUp>((json) => FollowUp.fromJson(json)).toList();
   // print("List Size: ${followUps.length}");
    notifyListeners();
    return followUps ;

  } else {
    throw Exception('Failed to load followUps');
  }
}

}