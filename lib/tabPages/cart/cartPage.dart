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

    return total;
  }

  final myController = TextEditingController();
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
              Text(
                _validate
                    ? _calculateTotalPromo().toString()
                    : _calculatTotal().toString(),
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

  _applyCode() {
    setState(() {
      myController.text == _code ? _validate = true : _validate = false;
    });

    widget.refresh();
  }

  _calculateTotalPromo() {
    double total = 0;

    GlobalVariables.cartList.forEach((element) {
      total += element.item.price * element.item.count!;
    });

    return total - 0.1 * total;
  }
}
