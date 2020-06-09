import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'auth.dart';
import '../Models/constants.dart';
import '../Models/Project.Model.dart';




class ProjectProvider with ChangeNotifier {
  String authToken;
ProjectProvider(this.authToken);
List< Project> _projects=[];
List<Project> get projects {
    return [..._projects];
  }

void update(AuthProvider auth){
  authToken=auth.token;
}




Future < List<Project>> fetchProjects() async {
  var response = await http.get(Const.url+'/project',headers: {
    'x-auth-token':authToken
  });
  if (response.statusCode == 200) {
   
   var jsonResponse=json.decode(response.body) ;
   //print(jsonResponse);
   var jsonResponseList=jsonResponse['projects'] as List;
    _projects = jsonResponseList.map<Project>((json) => Project.fromJson(json)).toList();
   // print("List Size: ${followUps.length}");
    notifyListeners();
   // print(projects.toString());
    return projects ;

  } else {
    throw Exception('Failed to load followUps');
  }
}


}