class Reservation {
  ReservationDuration reservationDuration;
  Cancellation cancellation;
  String id;
  String client;
  Model model;
  Project project;
  num paidAmount;
  String createdAt;
  String updatedAt;

  Reservation(
      {this.id,
      this.client,
      this.cancellation,
      this.createdAt,
      this.model,
      this.paidAmount,
      this.project,
      this.reservationDuration,
      this.updatedAt});

  factory Reservation.fromJson(Map<String, dynamic> parsedJson) {
    if(parsedJson['model']==null){
return Reservation(
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      client: parsedJson['client'] == null
          ? 'null'
          : parsedJson['client'] as String,
      paidAmount: parsedJson['paidAmount'] == null
          ? 0
          : parsedJson['paidAmount'] as num,
      createdAt: parsedJson['createdAt'] == null
          ? 'null'
          : parsedJson['createdAt'] as String,
      updatedAt: parsedJson['updatedAt'] == null
          ? 'null'
          : parsedJson['updatedAt'] as String,
      reservationDuration:
          ReservationDuration.fromJson(parsedJson['reservationDuration']),
      project: Project.fromJson(parsedJson['project']),
      cancellation: Cancellation.fromJson(parsedJson['cancellation']),
    );
    }
    else  if(parsedJson['reservationDuration']==null){
return Reservation(
   id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      client: parsedJson['client'] == null
          ? 'null'
          : parsedJson['client'] as String,
      paidAmount: parsedJson['paidAmount'] == null
          ? 0
          : parsedJson['paidAmount'] as num,
      createdAt: parsedJson['createdAt'] == null
          ? 'null'
          : parsedJson['createdAt'] as String,
      updatedAt: parsedJson['updatedAt'] == null
          ? 'null'
          : parsedJson['updatedAt'] as String,
      model: Model.fromJson(parsedJson['model']),
      project: Project.fromJson(parsedJson['project']),
      cancellation: Cancellation.fromJson(parsedJson['cancellation']),
);}
  else  if(parsedJson['project']==null){
return Reservation(
   id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      client: parsedJson['client'] == null
          ? 'null'
          : parsedJson['client'] as String,
      paidAmount: parsedJson['paidAmount'] == null
          ? 0
          : parsedJson['paidAmount'] as num,
      createdAt: parsedJson['createdAt'] == null
          ? 'null'
          : parsedJson['createdAt'] as String,
      updatedAt: parsedJson['updatedAt'] == null
          ? 'null'
          : parsedJson['updatedAt'] as String,
      model: Model.fromJson(parsedJson['model']),
      cancellation: Cancellation.fromJson(parsedJson['cancellation']),
        reservationDuration:
          ReservationDuration.fromJson(parsedJson['reservationDuration']),
);}
 else  if(parsedJson['cancellation']==null){
return Reservation(
   id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      client: parsedJson['client'] == null
          ? 'null'
          : parsedJson['client'] as String,
      paidAmount: parsedJson['paidAmount'] == null
          ? 0
          : parsedJson['paidAmount'] as num,
      createdAt: parsedJson['createdAt'] == null
          ? 'null'
          : parsedJson['createdAt'] as String,
      updatedAt: parsedJson['updatedAt'] == null
          ? 'null'
          : parsedJson['updatedAt'] as String,
      model: Model.fromJson(parsedJson['model']),
       reservationDuration:
          ReservationDuration.fromJson(parsedJson['reservationDuration']),
      project: Project.fromJson(parsedJson['project']),
);}
    return Reservation(
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      client: parsedJson['client'] == null
          ? 'null'
          : parsedJson['client'] as String,
      paidAmount: parsedJson['paidAmount'] == null
          ? 'null'
          : parsedJson['paidAmount'] as num,
      createdAt: parsedJson['createdAt'] == null
          ? 0
          : parsedJson['createdAt'] as String,
      updatedAt: parsedJson['updatedAt'] == null
          ? 'null'
          : parsedJson['updatedAt'] as String,
      model: Model.fromJson(parsedJson['model']),
      reservationDuration:
          ReservationDuration.fromJson(parsedJson['reservationDuration']),
      project: Project.fromJson(parsedJson['project']),
      cancellation: Cancellation.fromJson(parsedJson['cancellation']),
    );
  }
}

class ReservationDuration {
  num duration;
  String startedAt;
  String endAt;

  ReservationDuration({this.duration, this.endAt, this.startedAt});

  factory ReservationDuration.fromJson(Map<String, dynamic> parsedJson) {
    return ReservationDuration(
      duration: parsedJson['duration'] == null
          ? 0
          : parsedJson['duration'] as num,
      startedAt: parsedJson['startedAt'] == null
          ? 'null'
          : parsedJson['startedAt'] as String,
      endAt:
          parsedJson['endAt'] == null ? 'null' : parsedJson['endAt'] as String,
    );
  }
}

class Cancellation {
  bool cancelled;
  String cancelledAt;
  Cancellation({
    this.cancelled,
    this.cancelledAt,
  });

  factory Cancellation.fromJson(Map<String, dynamic> parsedJson) {
    return Cancellation(
      cancelled: parsedJson['cancelled'] == null
          ? 'null'
          : parsedJson['cancelled'] as bool,
      cancelledAt: parsedJson['cancelledAt'] == null
          ? 'null'
          : parsedJson['cancelledAt'] as String,
    );
  }
}

class Model {
  PaymentMechanism paymentMechanism;
  num area;
  String unitStatus;
  List<String> modelPlan;
  String id;
  num floor;
  num number;
  String name;
  String unitType;
  String finishingLevel;
  num totalPrice;

  Model(
      {this.id,
      this.number,
      this.unitType,
      this.area,
      this.finishingLevel,
      this.floor,
      this.modelPlan,
      this.name,
      this.paymentMechanism,
      this.totalPrice,
      this.unitStatus});

  factory Model.fromJson(Map<String, dynamic> parsedJson) {
    var hasFromJson = parsedJson['modelPlan'];
    List<String> modelPlan = hasFromJson.cast<String>();
if(parsedJson['paymentMechanism']==null){
  return Model(
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      number:
          parsedJson['number'] == null ? 0 : parsedJson['number'] as num,
      unitType: parsedJson['unitType'] == null
          ? 'null'
          : parsedJson['unitType'] as String,
      area: parsedJson['area'] == null ? 0 : parsedJson['area'] as num,
      finishingLevel: parsedJson['finishingLevel'] == null
          ? 'null'
          : parsedJson['finishingLevel'] as String,
      floor: parsedJson['floor'] == null ? 0 : parsedJson['floor'] as num,
      modelPlan: modelPlan,
      name: parsedJson['name'] == null ? 'null' : parsedJson['name'] as String,
      totalPrice: parsedJson['totalPrice'] == null
          ? 0
          : parsedJson['totalPrice'] as num,
      unitStatus: parsedJson['unitStatus'] == null
          ? 'null'
          : parsedJson['unitStatus'] as String,
    );
}
    return Model(
      paymentMechanism:
          PaymentMechanism.fromJson(parsedJson['paymentMechanism']),
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      number:
          parsedJson['number'] == null ? 0 : parsedJson['number'] as num,
      unitType: parsedJson['unitType'] == null
          ? 'null'
          : parsedJson['unitType'] as String,
      area: parsedJson['area'] == null ? 0 : parsedJson['area'] as num,
      finishingLevel: parsedJson['finishingLevel'] == null
          ? 'null'
          : parsedJson['finishingLevel'] as String,
      floor: parsedJson['floor'] == null ? 0 : parsedJson['floor'] as num,
      modelPlan: modelPlan,
      name: parsedJson['name'] == null ? 'null' : parsedJson['name'] as String,
      totalPrice: parsedJson['totalPrice'] == null
          ? 0
          : parsedJson['totalPrice'] as num,
      unitStatus: parsedJson['unitStatus'] == null
          ? 'null'
          : parsedJson['unitStatus'] as String,
    );
  }
}

class PaymentMechanism {
  ReceiptBatch receiptBatch;
  MaintenanceCharge maintenanceCharge;
  ReservationValue reservationValue;
  Commission commission;
  ContractDeposite contractDeposite;
  String paymentSystem;
  num priceForMeter;
  num intsallmentDuration;
  String deliverDate;
  num totalInstallments;
  num installment;

  PaymentMechanism({
    this.commission,
    this.contractDeposite,
    this.deliverDate,
    this.installment,
    this.intsallmentDuration,
    this.maintenanceCharge,
    this.paymentSystem,
    this.priceForMeter,
    this.receiptBatch,
    this.reservationValue,
    this.totalInstallments,
  });

  factory PaymentMechanism.fromJson(Map<String, dynamic> parsedJson) {
    if(parsedJson['commission']==null){return PaymentMechanism(
      contractDeposite:
          ContractDeposite.fromJson(parsedJson['contractDeposite']),
      receiptBatch: ReceiptBatch.fromJson(parsedJson['receiptBatch']),
      maintenanceCharge: MaintenanceCharge.fromJson(
          parsedJson['maintenanceCharg']),
      reservationValue: ReservationValue.fromJson(parsedJson['reservationValue']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );}
    else if(parsedJson['contractDeposite']==null){return PaymentMechanism(
      commission: Commission.fromJson(parsedJson['commission']),
      receiptBatch: ReceiptBatch.fromJson(parsedJson['receiptBatch']),
      maintenanceCharge: MaintenanceCharge.fromJson(
          parsedJson['maintenanceCharg']),
      reservationValue: ReservationValue.fromJson(parsedJson['reservationValue']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );}
    else if(parsedJson['receiptBatch']==null){return PaymentMechanism(
      commission: Commission.fromJson(parsedJson['commission']),
      contractDeposite:
          ContractDeposite.fromJson(parsedJson['contractDeposite']),
      maintenanceCharge: MaintenanceCharge.fromJson(
          parsedJson['maintenanceCharg']),
      reservationValue: ReservationValue.fromJson(parsedJson['reservationValue']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );}
    else if(parsedJson['maintenanceCharg']==null){return PaymentMechanism(
      commission: Commission.fromJson(parsedJson['commission']),
      contractDeposite:
          ContractDeposite.fromJson(parsedJson['contractDeposite']),
      receiptBatch: ReceiptBatch.fromJson(parsedJson['receiptBatch']),
      reservationValue: ReservationValue.fromJson(parsedJson['reservationValue']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );}
    else if(parsedJson['reservationValue']==null){return PaymentMechanism(
      commission: Commission.fromJson(parsedJson['commission']),
      contractDeposite:
          ContractDeposite.fromJson(parsedJson['contractDeposite']),
      receiptBatch: ReceiptBatch.fromJson(parsedJson['receiptBatch']),
      maintenanceCharge: MaintenanceCharge.fromJson(
          parsedJson['maintenanceCharg']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );}
    return PaymentMechanism(
      commission: Commission.fromJson(parsedJson['commission']),
      contractDeposite:
          ContractDeposite.fromJson(parsedJson['contractDeposite']),
      receiptBatch: ReceiptBatch.fromJson(parsedJson['receiptBatch']),
      maintenanceCharge: MaintenanceCharge.fromJson(
          parsedJson['maintenanceCharg']),
      reservationValue: ReservationValue.fromJson(parsedJson['reservationValue']),
      intsallmentDuration: parsedJson['intsallmentDuration'] == null
          ? 0
          : parsedJson['intsallmentDuration'] as num,
      priceForMeter: parsedJson['priceForMeter'] == null
          ? 0
          : parsedJson['priceForMeter'] as num,
      totalInstallments: parsedJson['totalInstallments'] == null
          ? 0
          : parsedJson['totalInstallments'] as num,
      installment: parsedJson['installment'] == null
          ? 0
          : parsedJson['installment'] as num,
      deliverDate: parsedJson['deliverDate'] == null
          ? 'null'
          : parsedJson['deliverDate'] as String,
      paymentSystem: parsedJson['paymentSystem'] == null
          ? 'null'
          : parsedJson['paymentSystem'] as String,
    );
  }
}

class ReceiptBatch {
  num value;
  num cost;

  ReceiptBatch({this.cost, this.value});

  factory ReceiptBatch.fromJson(Map<String, dynamic> parsedJson) {
    return ReceiptBatch(
      cost: parsedJson['cost'] == null ? 0 : parsedJson['cost'] as num,
      value: parsedJson['value'] == null ? 0 : parsedJson['value'] as num,
    );
  }
}

class MaintenanceCharge {
  num value;
  num cost;

  MaintenanceCharge({this.cost, this.value});

  factory MaintenanceCharge.fromJson(Map<String, dynamic> parsedJson) {
    return MaintenanceCharge(
      cost: parsedJson['cost'] == null ? 0 : parsedJson['cost'] as num,
      value: parsedJson['value'] == null ? 0 : parsedJson['value'] as num,
    );
  }
}

class ReservationValue {
  num value;
  num cost;

  ReservationValue({this.cost, this.value});

  factory ReservationValue.fromJson(Map<String, dynamic> parsedJson) {
    return ReservationValue(
      cost: parsedJson['cost'] == null ? 0: parsedJson['cost'] as num,
      value: parsedJson['value'] == null ? 0 : parsedJson['value'] as num,
    );
  }
}

class Commission {
  num value;
  num cost;

  Commission({this.cost, this.value});

  factory Commission.fromJson(Map<String, dynamic> parsedJson) {
    return Commission(
      cost: parsedJson['cost'] == null ? 0 : parsedJson['cost'] as num,
      value: parsedJson['value'] == null ? 0: parsedJson['value'] as num,
    );
  }
}

class ContractDeposite {
  num value;
  num cost;

  ContractDeposite({this.cost, this.value});

  factory ContractDeposite.fromJson(Map<String, dynamic> parsedJson) {
    return ContractDeposite(
      cost: parsedJson['cost'] == null ? 0 : parsedJson['cost'] as num,
      value: parsedJson['value'] == null ? 0 : parsedJson['value'] as num,
    );
  }
}

class Project {
  ProjectGallery projectGallery;
  String title;
  String address;
  String compound;
  String description;
  String notes;
  bool isAvailable;
  List<String> floors;
  List<String> licences;
  String id;
  num floorsTotal;

  Project(
      {this.projectGallery,
        this.id,
      this.address,
      this.compound,
      this.description,
      this.floors,
      this.floorsTotal,
      this.isAvailable,
      this.licences,
      this.notes,
      this.title});

  factory Project.fromJson(Map<String, dynamic> parsedJson) {
    var hasFromJson = parsedJson['floors'];
    List<String> floors = hasFromJson.cast<String>();

    var hasFromJson2 = parsedJson['licences'];
    List<String> licences = hasFromJson2.cast<String>();

    if(parsedJson['projectGallery']==null){
      return Project(
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      address: parsedJson['address'] == null
          ? 'null'
          : parsedJson['address'] as String,
      compound: parsedJson['compound'] == null
          ? 'null'
          : parsedJson['compound'] as String,
      description: parsedJson['description'] == null
          ? 'null'
          : parsedJson['description'] as String,
      floorsTotal: parsedJson['floorsTotal'] == null
          ? 0
          : parsedJson['floorsTotal'] as num,
      isAvailable: parsedJson['isAvailable'] == null
          ? 'null'
          : parsedJson['isAvailable'] as bool,
      title: parsedJson['title'] == null ? 'null' : parsedJson['title'] as String,
      notes:
          parsedJson['notes'] == null ? 'null' : parsedJson['notes'] as String,
      floors: floors,
      licences: licences,
    );
    }

    return Project(
       projectGallery: ProjectGallery.fromJson(parsedJson['projectGallery']),
      id: parsedJson['_id'] == null ? 'null' : parsedJson['_id'] as String,
      address: parsedJson['address'] == null
          ? 'null'
          : parsedJson['address'] as String,
      compound: parsedJson['compound'] == null
          ? 'null'
          : parsedJson['compound'] as String,
      description: parsedJson['description'] == null
          ? 'null'
          : parsedJson['description'] as String,
      floorsTotal: parsedJson['floorsTotal'] == null
          ? 0
          : parsedJson['floorsTotal'] as num,
      isAvailable: parsedJson['isAvailable'] == null
          ? 'null'
          : parsedJson['isAvailable'] as bool,
      title: parsedJson['title'] == null ? 'null' : parsedJson['title'] as String,
      notes:
          parsedJson['notes'] == null ? 'null' : parsedJson['notes'] as String,
      floors: floors,
      licences: licences,
    );
  }
}

class ProjectGallery {
  List<String> images;
  String cover;

  ProjectGallery({this.cover, this.images});

  factory ProjectGallery.fromJson(Map<String, dynamic> parsedJson) {
    var hasFromJson = parsedJson['images'];
    List<String> imges = hasFromJson.cast<String>();

    return ProjectGallery(
      cover:
          parsedJson['cover'] == null ? 'null' : parsedJson['cover'] as String,
      images: imges,
    );
  }
}
