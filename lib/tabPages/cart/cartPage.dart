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
      bottomNavigationBar: new Container(
        color: Colors.white54,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text('Total:'),
              subtitle: new Text (''),
            )),
            Expanded(

                child:Container (
            decoration: new BoxDecoration(shape: BoxShape.rectangle,
            color: Colors.green,
            border: Border.all(color:Colors.green ),

            ),
             child:new MaterialButton(onPressed: (){},
            child: new Text("Continue to payment",  style: TextStyle(color:Colors.white ),),
             )
                ) ,
            )
          ],
        ),
      ),
       body: Column(
         children: [
           Expanded(child: ListView.builder(
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

                   Column(
                     children: [

                     ],
                   ),

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
