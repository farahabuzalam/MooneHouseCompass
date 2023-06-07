
import 'package:flutter/material.dart';

class CartCount{

  String   image, wight, name;
  int? count;
  double price;

  CartCount({
    required this.name,
    required this.wight,
    this.count,
    required this.image,
    required this.price
  });
}
