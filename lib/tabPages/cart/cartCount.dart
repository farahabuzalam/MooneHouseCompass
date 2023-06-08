
import 'package:flutter/material.dart';
import 'package:testproject/modules/cartListModule.dart';

import '../../modules/itemContainerModule.dart';
class CartCount extends StatefulWidget {

  ItemContainerModule item;

   CartCount({Key? key, required this.item}) : super(key: key);

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

        ],
      ),
    );
  }
}
