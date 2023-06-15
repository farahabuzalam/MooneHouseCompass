import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testproject/modules/cartListModule.dart';
import 'package:testproject/modules/person.dart';


class GlobalVariables {
  static int selectedTap = 0;
  static Person? person;
  static List <CartListModule> cartList = [];


}