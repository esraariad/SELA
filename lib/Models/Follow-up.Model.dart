class FollowUp {
  String id;
  String description;
  String activityType;
  Client client;
  StartAt startAt;
  EndAt endAt;

  FollowUp({
    this.id,
    this.description,
    this.activityType,
    this.client,
    this.startAt,
    this.endAt,
  });
  factory FollowUp.fromJson(Map<String, dynamic> parsedJson) {
    return FollowUp(
      id:parsedJson['_id']==null?'null': parsedJson['_id']as String,
      description:parsedJson['description']==null?'null': parsedJson['description']as String,
      activityType:parsedJson['activityType']==null?'null': parsedJson['activityType']as String,
      client: Client.fromJson(parsedJson['client']),
      startAt: StartAt.fromJson(parsedJson['startAt']),
      endAt: EndAt.fromJson(parsedJson['endAt']),
    );
  }

}

class Client {
  Info info;
  String id;
  String unitType;
  String inCharge;
  String regionOfInterest;
  String source;
  String notes;
  String status;

  Client({
    this.info,
    this.id,
    this.unitType,
    this.inCharge,
    this.regionOfInterest,
    this.source,
    this.notes,
    this.status
  });

  factory Client.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['info'] != null) {
    return Client(
        id:parsedJson['_id']==null?'null': parsedJson['_id']as String,
        info: Info.fromJson(parsedJson['info']),
        unitType: parsedJson['unitType']==null?'null': parsedJson['unitType'] as String,
        inCharge:parsedJson['inCharge']==null?'null': parsedJson['inCharge']as String,
       regionOfInterest: parsedJson['regionOfInterest']==null?'null': parsedJson['regionOfInterest'] as String,
        source: parsedJson['source'] ==null?'null': parsedJson['source']as String,
        notes: parsedJson['notes'] ==null?'null': parsedJson['notes']as String,
        status: parsedJson['status'] ==null?'null': parsedJson['status']as String,
        );}
        else{
          return Client(
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

class StartAt {
  String date;
  String time;

  StartAt({
    this.date,
    this.time
  });

  factory StartAt.fromJson(Map<String, dynamic> parsedJson) {
    return StartAt(
      date:parsedJson['date']==null?'null': parsedJson['date']as String,
      time:parsedJson['time']==null?'null': parsedJson['time']as String,
    );
}
}

class EndAt {

   String date;
  String time;

  EndAt({
    this.date,
    this.time
  });

  factory EndAt.fromJson(Map<String, dynamic> parsedJson) {
    return EndAt(
      date:parsedJson['date']==null?'null': parsedJson['date']as String,
      time:parsedJson['time']==null?'null': parsedJson['time']as String,
    );
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
        fullName: parsedJson['fullName']==null?null: parsedJson['fullName']as String,
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
