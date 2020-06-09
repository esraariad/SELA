class Project {
  String sId;
  String title;
  ProjectGallery projectGallery;
  String address;
  String compound;
  String description;
  String notes;
  List<String> licences;
  bool isAvailable;
  num floorsTotal;
  List<Floors> floors;

  Project(
      {this.sId,
      this.title,
      this.projectGallery,
      this.address,
      this.compound,
      this.description,
      this.notes,
      this.licences,
      this.isAvailable,
      this.floorsTotal,
      this.floors});

  Project.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    projectGallery = json['projectGallery'] != null
        ? new ProjectGallery.fromJson(json['projectGallery'])
        : null;
    address = json['address'];
    compound = json['compound'];
    description = json['description'];
    notes = json['notes'];
    licences = json['licences'].cast<String>();
    isAvailable = json['isAvailable'];
    floorsTotal = json['floorsTotal'];
    if (json['floors'] != null) {
      floors = new List<Floors>();
      json['floors'].forEach((v) {
        floors.add(new Floors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    if (this.projectGallery != null) {
      data['projectGallery'] = this.projectGallery.toJson();
    }
    data['address'] = this.address;
    data['compound'] = this.compound;
    data['description'] = this.description;
    data['notes'] = this.notes;
    data['licences'] = this.licences;
    data['isAvailable'] = this.isAvailable;
    data['floorsTotal'] = this.floorsTotal;
    if (this.floors != null) {
      data['floors'] = this.floors.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProjectGallery {
  List<String> images;
  String cover;

  ProjectGallery({this.images, this.cover});

  ProjectGallery.fromJson(Map<String, dynamic> json) {
    images = json['images']!=null?json['images'].cast<String>():null;
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.images != null) {
      data['images'] = this.images;
    }
    data['images'] = this.images;
    data['cover'] = this.cover;
    return data;
  }
}

class Floors {
  String id;
  num totalPrice;
  PaymentMechanism paymentMechanism;
  num area;
  String unitStatus;
  List<String> modelPlan;
  String projectId;
  num floor;
  num number;
  String name;
  String unitType;
  String finishingLevel;

  Floors(
      {this.id,
      this.totalPrice,
      this.paymentMechanism,
      this.area,
      this.unitStatus,
      this.modelPlan,
      this.projectId,
      this.floor,
      this.number,
      this.name,
      this.unitType,
      this.finishingLevel});

  Floors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalPrice = json['totalPrice'];
    paymentMechanism = json['paymentMechanism'] != null
        ? new PaymentMechanism.fromJson(json['paymentMechanism'])
        : null;
    area = json['area'];
    unitStatus = json['unitStatus'];
    modelPlan = json['modelPlan'].cast<String>();
    projectId = json['projectId'];
    floor = json['floor'];
    number = json['number'];
    name = json['name'];
    unitType = json['unitType'];
    finishingLevel = json['finishingLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['totalPrice'] = this.totalPrice;
    if (this.paymentMechanism != null) {
      data['paymentMechanism'] = this.paymentMechanism.toJson();
    }
    data['area'] = this.area;
    data['unitStatus'] = this.unitStatus;
    data['modelPlan'] = this.modelPlan;
    data['projectId'] = this.projectId;
    data['floor'] = this.floor;
    data['number'] = this.number;
    data['name'] = this.name;
    data['unitType'] = this.unitType;
    data['finishingLevel'] = this.finishingLevel;
    return data;
  }
}

class PaymentMechanism {
  ReceiptBatch receiptBatch;
  ReceiptBatch maintenanceCharge;
  ReceiptBatch reservationValue;
  ReceiptBatch commission;
  ReceiptBatch contractDeposite;
  String paymentSystem;
  num priceForMeter;
  num intsallmentDuration;
  String deliverDate;
  num totalInstallments;
  num installment;

  PaymentMechanism(
      {this.receiptBatch,
      this.maintenanceCharge,
      this.reservationValue,
      this.commission,
      this.contractDeposite,
      this.paymentSystem,
      this.priceForMeter,
      this.intsallmentDuration,
      this.deliverDate,
      this.totalInstallments,
      this.installment});

  PaymentMechanism.fromJson(Map<String, dynamic> json) {
    receiptBatch = json['receiptBatch'] != null
        ? new ReceiptBatch.fromJson(json['receiptBatch'])
        : null;
    maintenanceCharge = json['maintenanceCharge'] != null
        ? new ReceiptBatch.fromJson(json['maintenanceCharge'])
        : null;
    reservationValue = json['reservationValue'] != null
        ? new ReceiptBatch.fromJson(json['reservationValue'])
        : null;
    commission = json['commission'] != null
        ? new ReceiptBatch.fromJson(json['commission'])
        : null;
    contractDeposite = json['contractDeposite'] != null
        ? new ReceiptBatch.fromJson(json['contractDeposite'])
        : null;
    paymentSystem = json['paymentSystem'];
    priceForMeter = json['priceForMeter'];
    intsallmentDuration = json['intsallmentDuration'];
    deliverDate = json['deliverDate'];
    totalInstallments = json['totalInstallments'];
    installment = json['installment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.receiptBatch != null) {
      data['receiptBatch'] = this.receiptBatch.toJson();
    }
    if (this.maintenanceCharge != null) {
      data['maintenanceCharge'] = this.maintenanceCharge.toJson();
    }
    if (this.reservationValue != null) {
      data['reservationValue'] = this.reservationValue.toJson();
    }
    if (this.commission != null) {
      data['commission'] = this.commission.toJson();
    }
    if (this.contractDeposite != null) {
      data['contractDeposite'] = this.contractDeposite.toJson();
    }
    data['paymentSystem'] = this.paymentSystem;
    data['priceForMeter'] = this.priceForMeter;
    data['intsallmentDuration'] = this.intsallmentDuration;
    data['deliverDate'] = this.deliverDate;
    data['totalInstallments'] = this.totalInstallments;
    data['installment'] = this.installment;
    return data;
  }
}

class ReceiptBatch {
  num value;
  num cost;

  ReceiptBatch({this.value, this.cost});

  ReceiptBatch.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['cost'] = this.cost;
    return data;
  }
}