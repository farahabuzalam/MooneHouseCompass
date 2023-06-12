import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
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

  _calculatTotal() {
    double total = 0;

    GlobalVariables.cartList.forEach((element) {
      total += element.item.price * element.item.count!;
    });


    int discountPerc = _applyCode();
    if (_validate)
      return total - (discountPerc*total)/100;
    else
      return total;
  }

  final myController = TextEditingController();

  List<PromoCode> promoCodes = [
    PromoCode(code: 'souha', perc: 10),
    PromoCode(code: 'anan', perc: 20),
    PromoCode(code: 'farah', perc: 30),
  ];

  String _code = 'sofan3';

  bool _validate = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Padding(
          padding:  EdgeInsets.all(AppSize.padding10),
          child: Row(children: [
            Text(
              'Your cart',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              'items: ' + GlobalVariables.cartList.length.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
        Flexible(
            child: ListView(
              padding: EdgeInsets.all(AppSize.padding10),
                children: GlobalVariables.cartList
                    .map((e) => CartCount(
                        item: e.item, refresh: () => widget.refresh()))
                    .toList())),
        Container(
          padding: EdgeInsets.all(AppSize.padding10),
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 200,
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Promo Code',
                  icon: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ),
            TextButton(
                onPressed: () => _applyCode(),
                style:
                    TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                child: Text('Apply code',
                    style: TextStyle(fontSize: 20, color: Colors.white))
            )
          ]),
          SizedBox(height: 20),
          Row(
            children: [
              Text('Grand Total', style: TextStyle(fontSize: 20)),
              Spacer(),
              Text(_calculatTotal().toString(),
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ]))
      ]),
    );
  }

  _setState() {
    setState(() {});
  }

    int _applyCode() {
    int perc = 0;
    setState(() {
      for (PromoCode element in promoCodes) {
        if(myController.text == element.code)
        {
          _validate = true;
          perc = element.perc;
          break;
        }

      };
      //myController.text == _code ? _validate = true : _validate = false;
    });
    return perc;
  }


}

class PromoCode{
  String code;
  int perc;

  PromoCode({required this.code, required this.perc});
}
