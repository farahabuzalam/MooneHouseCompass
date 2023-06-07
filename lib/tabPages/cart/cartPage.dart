import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/sharedWidgets/itemContainer.dart';

import '../../constants/appsize.dart';
import '../../globalVariables.dart';
import '../../modules/cartListModule.dart';
import '../../modules/itemContainerModule.dart';

class CartPage extends StatefulWidget {


   CartPage({Key? key,}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
  }

  class _CartPageState extends State<CartPage> {

    List <CartListModule> cartList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Expanded(child: ListView.builder(
               itemCount: ItemContainer(item: item),
               itemBuilder: (context,index){
             return Card(
               child: Column(
                 children: [
                   Row( children: [

                     Image(
                       height:100 ,
                       width:100 ,
                       image: NetworkImage(cartList[index].toString()),
                     ),
                   ],),
                 ],
               ),
             );


           }
             )


           ),
         ],
       ),





    );
   }
 }
