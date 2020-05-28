import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
//import 'package:flutter/foundation.dart';
import '../Models/Customer.Model.dart';
import 'auth.dart';
import '../Models/constants.dart';



class Customers with ChangeNotifier {

 String authToken;
Customers(this.authToken);
 List< Customer> _customers=[];
List<Customer> get customers {
    return [..._customers];
  }


void update(AuthProvider auth){
  authToken=auth.token;

}



  Future < List<Customer>> fetchAllCustomers() async {
  var response = await http.get(Const.url+'/client/',headers: {
    'x-auth-token':authToken
  });
  if (response.statusCode == 200) {
   
   var jsonResponse=json.decode(response.body) ;
   var jsonResponseList=jsonResponse['clients'] as List;
  // print(jsonResponseList);
    _customers = jsonResponseList.map<Customer>((json) => Customer.fromJson(json)).toList();
    //print("List Size: ${customers.length}");
    notifyListeners();
    return customers ;

  } else {
    throw Exception('Failed to load album');
  }
}

Future <Customer> fetchSingleCustomer(id) async {
  var response = await http.get(Const.url+'/Client/details/$id',headers: {
    'x-auth-token':authToken
  });
  if (response.statusCode == 200) {
  Map<String, dynamic> map =json.decode(response.body) ['message'];
   Customer customer=Customer.fromJson(map); 
  
   //print(customer.id);
    notifyListeners();
    return customer ;
  } else {
    throw Exception('Failed to load Customer');
  }
}



  void addCustomer() {
    // _items.add(value);
    notifyListeners();
  }
  
}
