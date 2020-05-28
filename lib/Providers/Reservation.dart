import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'auth.dart';
import '../Models/constants.dart';
import '../Models/Reservation.Model.dart';


class ReservationProvider with ChangeNotifier {
List< Reservation> reservation=[];
  String authToken;
ReservationProvider(this.authToken);

void update(AuthProvider auth){
  authToken=auth.token;
}




Future < List<Reservation>> fetchReservations(String id) async {
  var response = await http.get(Const.url+'/client/reservation/$id',headers: {
    'x-auth-token':authToken
  });
  if (response.statusCode == 200) {
   
   var jsonResponse=json.decode(response.body) ;
   //print(jsonResponse);
   var jsonResponseList=jsonResponse['message'] as List;
    reservation = jsonResponseList.map<Reservation>((json) => Reservation.fromJson(json)).toList();
   // print("List Size: ${followUps.length}");
    notifyListeners();
    return reservation ;

  } else {
    throw Exception('Failed to load followUps');
  }
}


}