import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testproject/modules/cartListModule.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/storeData/PersonModule.dart';


class GlobalVariables {
  static int selectedTap = 0;
  static Person? person;
  static List <CartListModule> cartList = [];
  static List <ItemContainerModule> bestSellerProducts = [];
  static List <ItemContainerModule> recentlyAddedProducts = [];
  static List <ItemContainerModule> essentialsProducts = [];
  static List <ItemContainerModule> freeDeliveryProducts = [];
  static List <ItemContainerModule> buyOneGetOneProducts = [];
  static List <ItemContainerModule> above50Products = [];
  static List <ItemContainerModule> below50Products = [];
  static List <ItemContainerModule> bundlesProducts = [];

}