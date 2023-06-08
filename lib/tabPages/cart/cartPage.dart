import 'package:flutter/material.dart';
import 'package:testproject/tabPages/cart/cartCount.dart';
import '../../globalVariables.dart';


class CartPage extends StatefulWidget {
  Function() refresh;

   CartPage({Key? key, required this.refresh}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
  }

  class _CartPageState extends State<CartPage> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children:
            [
              Text('Your cart', style: TextStyle(fontSize: 20),),
              Spacer(),
              Text('items: '+ GlobalVariables.cartList.length.toString(), style: TextStyle(fontSize: 20),),
            ]
            ),

          Expanded(
            child: 
            ListView(
           children:
          GlobalVariables.cartList.map((e) => CartCount(item: e.item, refresh: ()=> _setState() )).toList()
        )
        ),

          Container(
            child: Column(
              children: [

                Row(children: [
                  Text('Grand Total', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Text(GlobalVariables.grandTotal.toString(), style: TextStyle(fontSize: 20),)
                ],
                )
              ]
            )

          )

        ]
      ),
    );


  }
  _setState() {
    setState(() {

    });
  }
 }
