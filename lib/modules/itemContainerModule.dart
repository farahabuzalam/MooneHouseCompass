import 'package:flutter/material.dart';

class ItemContainerModule{
  String off, rating, image, wight, name;
  String?  details, brand, origin;
  int? count;
  double price;
  bool isDeal;
  double? oldPrice;

  ItemContainerModule({
    required this.off,
    required this.rating,
    required this.name,
    required this.wight,
    this.count,
    required this.image,
    required this.price,
    this.details,
    this.brand,
    this.origin,
    required this.isDeal,
    this.oldPrice
  });
}