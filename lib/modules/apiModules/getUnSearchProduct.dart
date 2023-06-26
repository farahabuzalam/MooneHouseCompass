// To parse this JSON data, do
//
//     final getUnSearchProduct = getUnSearchProductFromJson(jsonString);

import 'dart:convert';

GetUnSearchProduct getUnSearchProductFromJson(String str) => GetUnSearchProduct.fromJson(json.decode(str));

String getUnSearchProductToJson(GetUnSearchProduct data) => json.encode(data.toJson());

class GetUnSearchProduct {
  int pageNumber;
  int pageSize;
  int totalPage;
  Result result;

  GetUnSearchProduct({
    required this.pageNumber,
    required this.pageSize,
    required this.totalPage,
    required this.result,
  });

  factory GetUnSearchProduct.fromJson(Map<String, dynamic> json) => GetUnSearchProduct(
    pageNumber: json["pageNumber"],
    pageSize: json["pageSize"],
    totalPage: json["totalPage"],
    result: Result.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "pageNumber": pageNumber,
    "pageSize": pageSize,
    "totalPage": totalPage,
    "result": result.toJson(),
  };
}

class Result {
  dynamic exception;
  int status;
  List<Datum> data;
  String message;
  bool success;

  Result({
    this.exception,
    required this.status,
    required this.data,
    required this.message,
    required this.success,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    exception: json["exception"],
    status: json["status"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "exception": exception,
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
    "success": success,
  };
}

class Datum {
  int rowsCount;
  String id;
  String name;
  String aname;
  String centerId;
  String statues;
  dynamic description;
  String iconAttached;
  String imgAttached;
  String googleMap;
  String centerTypeName;
  String centerTypeAname;
  double price;
  String centerName;
  String centerAname;
  String cityName;
  String cityAname;
  String areaName;
  String areaAname;
  String brandName;
  String brandAname;
  String unitsName;
  String unitsAname;
  String countryName;
  String countryAname;
  String weight;
  String origin;
  dynamic serviceDescriptionAr;
  dynamic serviceDescription;
  double discount;
  bool recentlyAdded;
  String alias;
  dynamic services;
  bool? excludeFromPromotion;
  bool? freeDelivery;
  bool? outOfStock;
  bool? buyOneGetOneFree;
  String serviceId;
  String brand;
  bool bundel;

  Datum({
    required this.rowsCount,
    required this.id,
    required this.name,
    required this.aname,
    required this.centerId,
    required this.statues,
    this.description,
    required this.iconAttached,
    required this.imgAttached,
    required this.googleMap,
    required this.centerTypeName,
    required this.centerTypeAname,
    required this.price,
    required this.centerName,
    required this.centerAname,
    required this.cityName,
    required this.cityAname,
    required this.areaName,
    required this.areaAname,
    required this.brandName,
    required this.brandAname,
    required this.unitsName,
    required this.unitsAname,
    required this.countryName,
    required this.countryAname,
    required this.weight,
    required this.origin,
    this.serviceDescriptionAr,
    this.serviceDescription,
    required this.discount,
    required this.recentlyAdded,
    required this.alias,
    this.services,
    this.excludeFromPromotion,
    this.freeDelivery,
    this.outOfStock,
    this.buyOneGetOneFree,
    required this.serviceId,
    required this.brand,
    required this.bundel,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    rowsCount: json["rowsCount"],
    id: json["id"],
    name: json["name"],
    aname: json["aname"],
    centerId: json["centerId"],
    statues: json["statues"],
    description: json["description"],
    iconAttached: json["iconAttached"],
    imgAttached: json["imgAttached"],
    googleMap: json["googleMap"],
    centerTypeName: json["centerTypeName"],
    centerTypeAname: json["centerTypeAname"],
    price: json["price"],
    centerName: json["centerName"],
    centerAname: json["centerAname"],
    cityName: json["cityName"],
    cityAname: json["cityAname"],
    areaName: json["areaName"],
    areaAname: json["areaAname"],
    brandName: json["brandName"],
    brandAname: json["brandAname"],
    unitsName: json["unitsName"],
    unitsAname: json["unitsAname"],
    countryName: json["countryName"],
    countryAname: json["countryAname"],
    weight: json["weight"],
    origin: json["origin"],
    serviceDescriptionAr: json["serviceDescriptionAr"],
    serviceDescription: json["serviceDescription"],
    discount: json["discount"]?.toDouble(),
    recentlyAdded: json["recentlyAdded"],
    alias: json["alias"],
    services: json["services"],
    excludeFromPromotion: json["excludeFromPromotion"],
    freeDelivery: json["freeDelivery"],
    outOfStock: json["outOfStock"],
    buyOneGetOneFree: json["buyOneGetOneFree"],
    serviceId: json["serviceId"],
    brand: json["brand"],
    bundel: json["bundel"],
  );

  Map<String, dynamic> toJson() => {
    "rowsCount": rowsCount,
    "id": id,
    "name": name,
    "aname": aname,
    "centerId": centerId,
    "statues": statues,
    "description": description,
    "iconAttached": iconAttached,
    "imgAttached": imgAttached,
    "googleMap": googleMap,
    "centerTypeName": centerTypeName,
    "centerTypeAname": centerTypeAname,
    "price": price,
    "centerName": centerName,
    "centerAname": centerAname,
    "cityName": cityName,
    "cityAname": cityAname,
    "areaName": areaName,
    "areaAname": areaAname,
    "brandName": brandName,
    "brandAname": brandAname,
    "unitsName": unitsName,
    "unitsAname": unitsAname,
    "countryName": countryName,
    "countryAname": countryAname,
    "weight": weight,
    "origin": origin,
    "serviceDescriptionAr": serviceDescriptionAr,
    "serviceDescription": serviceDescription,
    "discount": discount,
    "recentlyAdded": recentlyAdded,
    "alias": alias,
    "services": services,
    "excludeFromPromotion": excludeFromPromotion,
    "freeDelivery": freeDelivery,
    "outOfStock": outOfStock,
    "buyOneGetOneFree": buyOneGetOneFree,
    "serviceId": serviceId,
    "brand": brand,
    "bundel": bundel,
  };
}
