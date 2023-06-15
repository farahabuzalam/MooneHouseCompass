import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/cartListModule.dart';

import '../modules/person.dart';

@HiveType(typeId: 0)
class MyBoxes extends HiveObject {

  @HiveField(0)
  late Person person;

  @HiveField(1)
  late List<CartListModule> cartList;
}

class PersonAdapter extends TypeAdapter<MyBoxes>{

  @override
  // TODO: implement typeId
  int typeId = 0;

  @override
  void write(BinaryWriter reader, MyBoxes obj) {
    // TODO: implement write

  }

  @override
  MyBoxes read(BinaryReader reader) {
    // TODO: implement read
    return MyBoxes();
    throw UnimplementedError();
  }
}