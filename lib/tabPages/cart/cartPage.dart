import 'package:flutter/material.dart';
import 'package:testproject/tabPages/cart/cartCount.dart';
import '../../globalVariables.dart';


class CartPage extends StatefulWidget {

   CartPage({Key? key,}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
  }

  class _CartPageState extends State<CartPage> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children:
      GlobalVariables.cartList.map((e) => CartCount(item: e.item, refresh: ()=> _setState() )).toList()
    )
    );


  }
  _setState() {
    setState(() {

    });
  }
 }
