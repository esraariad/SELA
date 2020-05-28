//import 'package:flutter/foundation.dart';

class Customer {
  Info info;
  String id;
  String unitType;
  InCharge inCharge;
  String regionOfInterest;
  String source;
  String notes;
  String status;

  Customer({
    this.info,
    this.id,
    this.unitType,
    this.inCharge,
    this.regionOfInterest,
    this.source,
    this.notes,
    this.status
  });

  factory Customer.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['inCharge'] != null) {
    return Customer(
        id:parsedJson['_id']==null?'null': parsedJson['_id']as String,
        info: Info.fromJson(parsedJson['info']),
        unitType: parsedJson['unitType']==null?'null': parsedJson['unitType'] as String,
        inCharge: InCharge.fromJson(parsedJson['inCharge']),
       regionOfInterest: parsedJson['regionOfInterest']==null?'null': parsedJson['regionOfInterest'] as String,
        source: parsedJson['source'] ==null?'null': parsedJson['source']as String,
        notes: parsedJson['notes'] ==null?'null': parsedJson['notes']as String,
        status: parsedJson['status'] ==null?'null': parsedJson['status']as String,
        );}
        else{
          return Customer(
        id: parsedJson['_id']==null?null: parsedJson['_id']as String,
        info: Info.fromJson(parsedJson['info']),
        unitType: parsedJson['unitType']==null?null: parsedJson['unitType'] as String,
        regionOfInterest: parsedJson['regionOfInterest']==null?null: parsedJson['regionOfInterest'] as String,
        source: parsedJson['source'] ==null?null: parsedJson['source']as String,
        notes: parsedJson['notes'] ==null?null: parsedJson['notes']as String,
        status: parsedJson['status'] ==null?null: parsedJson['status']as String,
        );

        }
  }
}

class Info {
  String fullName;
  String job;
  Location location;
  ContactInfo contactInfo;

  Info({this.fullName, this.job, this.contactInfo, this.location});
  factory Info.fromJson(Map<String, dynamic> parsedJson) {
    
         if(parsedJson['contactInfo'] == null){
           return Info(
        fullName: parsedJson['fullName']==null?'null': parsedJson['fullName']as String,
        job: parsedJson['job'] ==null?'null': parsedJson['job']as String,
        location: Location.fromJson(parsedJson['location']),
      );
        }
        else if (parsedJson['location'] == null||parsedJson['location'] == ''){
          return Info(
        fullName: parsedJson['fullName']==null?'null': parsedJson['fullName']as String,
        job: parsedJson['job'] ==null?'null': parsedJson['job']as String,
        contactInfo: ContactInfo.fromJson(parsedJson['contactInfo']));
        }

       else {
    return Info(
        fullName: parsedJson['fullName']==null?'null': parsedJson['fullName']as String,
        job: parsedJson['job'] ==null?null: parsedJson['job']as String,
        location: Location.fromJson(parsedJson['location']),
        contactInfo: ContactInfo.fromJson(parsedJson['contactInfo']));
        }
  }
}

class Location {
  String country;
  String city;
  String address;
  String currentResidence;

  Location({
    this.country,
    this.city,
    this.address,
    this.currentResidence,
  });

  factory Location.fromJson(Map<String, dynamic> parsedJson) {
//     if( parsedJson['location']==null){
//  return Location(
     
//     );
//     }
//   else 
   return Location(
      country: parsedJson['country']==null?'null': parsedJson['country'] as String,
      city: parsedJson['city'] ==null?'null': parsedJson['city'] as String,
      address: parsedJson['address']==null?'null': parsedJson['address']  as String,
      currentResidence: parsedJson['currentResidence'] ==null?'null': parsedJson['currentResidence'] as String,
    );
  }
}

class ContactInfo {
  List<Phone> phone;
  String email;
  String landLine;

  ContactInfo({
    this.phone,
    this.email,
    this.landLine,
  });

  factory ContactInfo.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['phone'] != null) {
      var phoneFromJson = parsedJson['phone'] as List;
      List<Phone> phoneList =
          phoneFromJson.map((i) => Phone.fromJson(i)).toList();

      return ContactInfo(
        phone: phoneList,
        email: parsedJson['email']==null?'null': parsedJson['email'] as String,
        landLine: parsedJson['landLine']==null?'null': parsedJson['landLine'] as String,
      );
    } else {
      return ContactInfo(
        email: parsedJson['email']==null?'null': parsedJson['email'] as String,
        landLine: parsedJson['landLine']==null?'null': parsedJson['landLine'] as String,
      );
    }
  }
}

class Phone {
  String id;
  String number;
  bool defaultNumber;
  bool telegram;
  bool whatsApp;
  

  Phone({this.id,  this.number , this.whatsApp, this.defaultNumber ,this.telegram});

  factory Phone.fromJson(Map<String, dynamic> parsedJson) {
   
    return Phone(
        id: parsedJson['_id']==null?'null': parsedJson['_id'] as String,
        number: parsedJson['number'] ==null?'null': parsedJson['number']as String,
        defaultNumber : parsedJson['defaultNumber']==null?false: parsedJson['defaultNumber'] as bool,
        telegram : parsedJson['telegram'] ==null?false: parsedJson['telegram']as bool,
        whatsApp : parsedJson['whatsApp']==null?false: parsedJson['whatsApp'] as bool,
       
        );
  
  }}


  class InCharge{
     String id ;
     String fullName;
     String email;
     String password;
     String phone;
     String role;
     String avatar;
     String createdAt;
     String updatedAt;


     InCharge({this.fullName,this.id,this.phone, this.avatar ,this.createdAt ,this.email, this.password, this.role, this.updatedAt,});


factory InCharge.fromJson(Map<String, dynamic> parsedJson) {
   
    return InCharge(

      id : parsedJson['_id'] ==null?'null': parsedJson['_id'] as String,      
      fullName : parsedJson['fullName'] ==null?'null': parsedJson['fullName'] as String,
      email : parsedJson['email'] ==null?'null': parsedJson['email'] as String,
      password : parsedJson['password']  ==null?'null': parsedJson['password']as String,
      phone : parsedJson['phone'] ==null?'null': parsedJson['phone'] as String,
      role : parsedJson['role']  ==null?'null': parsedJson['role']as String,
      avatar : parsedJson['avatar']  ==null?'null': parsedJson['avatar']as String,
      createdAt : parsedJson['createdAt'] ==null?'null': parsedJson['createdAt'] as String,
      updatedAt : parsedJson['updatedAt']  ==null?'null': parsedJson['updatedAt']as String,
      
    );
}
  }


////للتحويل من String List:
///var hasFromJson  = parsedJson['cellphone'];
///List<String> cellphoneList = cellphoneFromJson.cast<String>();
