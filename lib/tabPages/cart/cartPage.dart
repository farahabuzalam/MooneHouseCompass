import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/tabPages/cart/cartCount.dart';
import '../../globalVariables.dart';


class CartPage extends StatefulWidget {
  Function() refresh;

   CartPage({Key? key, required this.refresh}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
  }

  class _CartPageState extends State<CartPage> {

   _calculatTotal(){
     var total = 0.0;
    GlobalVariables.cartList.forEach((element) {
      total += element.item.price * element.item.count!;
    });
    if(myController == code)
    return total - total*0.1;
    else
      return total;
  }

   final TextEditingController myController = TextEditingController();
   String code = 'sofan3';

   @override
    void dispose() {
          // Clean up the controller when the widget is disposed.
      myController.dispose();
      super.dispose();
   }

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

          Flexible(
            child:
            ListView(
           children:
          GlobalVariables.cartList.map((e) => CartCount(item: e.item, refresh: ()=>  widget.refresh() )).toList()
        )
        ),

          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[

                     SizedBox(
                       width: 200,
                       child: TextField(
                          controller: myController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Promo Code',
                            icon: Icon(Icons.shopping_cart_outlined)
                          ),
                        ),
                     ),

                    /*SizedBox(height: 20),*/

                    TextButton(
                        onPressed: ()=> ,
                        style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                        child: Text('Apply code',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                    )
                     )
                    )
                  ]
                ),

                SizedBox(height: 20),

                Row(children:
                [
                  Text('Grand Total', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Text(_calculatTotal().toString(), style: TextStyle(fontSize: 20),)
                ],
                ),



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


  _/*applyCode(text){
    var total = 0.0;
     if (myController == code) {
     GlobalVariables.cartList.forEach((element)
     {
       total += element.item.price * element.item.count!;
     });
     total = total - total*0.1;
     return total;
     }

     else {

     }

   }*/



 }
