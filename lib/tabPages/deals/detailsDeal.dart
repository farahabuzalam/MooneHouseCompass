import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/modules/itemContainerModule.dart';


class DetailsDeal extends StatefulWidget {
  ItemContainerModule deal;
   DetailsDeal({Key? key,required this.deal}) : super(key: key);

  @override
  State<DetailsDeal> createState() => _DetailsDealState();
}

class _DetailsDealState extends State<DetailsDeal> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.deal.count != null)
      _count = widget.deal.count!;
  }
  int _count = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSize.padding10),
        child: Column(
          children: [
            Expanded(
              child: ListView(children: [
                Padding(
                    padding: EdgeInsets.all(AppSize.padding10),
                    child: Image.network(widget.deal.image)),
                Row(children: [
                  Text(widget.deal.name,
                      style: TextStyle(fontSize: 40, color: Colors.green)),
                  Spacer(),
                  Icon(Icons.star, color: Colors.yellow, size: 30),
                  Text(widget.deal.rating,
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ]),
                SizedBox(
                  height: AppSize.margin20,
                ),
                _printdetail(widget.deal.details),
                Align(
                  child: Text(
                    widget.deal.price.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.green),
                    textAlign: TextAlign.left,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                _printdetail(widget.deal.brand),
                _printdetail(widget.deal.wight),
                _printdetail(widget.deal.origin),
              ]),
            ),
            Row(
              children: [
                _icon(Icons.remove, () => _minimise()),
                Text(_count.toString(),style: TextStyle(fontSize: 25 ),),
                _icon(Icons.add, () => _add()),
                Spacer(),
                TextButton(
                    onPressed: () => _addToCart(),
                    style: TextButton.styleFrom(
                        backgroundColor: AppColor.mainColor),
                    child: Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _printdetail(text) {
    return Align(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.left,
      ),
      alignment: Alignment.centerLeft,
    );
  }

  _icon(icon, Function() press) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: AppSize.margin20),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: AppColor.mainColor),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          icon,
          color: AppColor.white,
          size: 25,
        ),
      ),
    );
  }

  _add() {
    setState(() {
      _count++;

    });
  }

  _minimise() {
    setState(() {
      _count == 1
          ? _count= 1
          : _count = (_count- 1);
      print(_count.toString());
    });
  }
  _addToCart() {
   // GlobalVariables.cartList.add(CartListModule(deal: widget.deal));
    widget.deal.count= _count;
    Navigator.of(context).pop();
  }

}
