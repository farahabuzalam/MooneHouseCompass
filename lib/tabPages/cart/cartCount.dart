import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/cartListModule.dart';


import '../../modules/itemContainerModule.dart';
class CartCount extends StatefulWidget {

  ItemContainerModule item;
  Function()? refresh;

   CartCount({Key? key, required this.item, this.refresh}) : super(key: key);

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {


  @override
  Widget build(BuildContext context)
  {
    double totalPrice = widget.item.price;
    return Expanded(
      child:
      Container(
        padding: EdgeInsets.all(AppSize.padding10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Image.network(
                widget.item.image,
                fit: BoxFit.cover,
              ),
            ),

            Flexible(
              flex: 2,
              child: Column(
                  children: [
                    Text(
                      '${widget.item.name},\n ${widget.item.price}',
                      style: TextStyle(color: AppColor.black, fontSize: 16),
                      softWrap: true,
                    ),
                  ]

              ),
            ),
             Flexible(
               flex: 3,
               child: Column(
                  children: [
                    Row(
                      children: [
                        widget.item.count == null
                            ? SizedBox()
                            : _icon(Icons.remove, () => _minimise()),
                        widget.item.count == null
                            ? SizedBox()
                            : Text(
                          widget.item.count.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor.red,
                              backgroundColor:
                              AppColor.white.withOpacity(0.3)),
                        ),
                        _icon(Icons.add, () => _add()),
                      ],
                    ),
                    Text(
                      '${totalPrice = totalPrice * widget.item.count!}',
                      style: TextStyle(
                          color: AppColor.black,
                          backgroundColor: Colors.grey.shade100,
                          fontSize: 16),
                    ),
                    IconButton(
                        icon: Icon(Icons.delete_outlined),
                        onPressed: ()=>  {
                          GlobalVariables.cartList.removeWhere((element) => element.item == widget.item),
                          widget.refresh!(),
                        }
                    ),      ],
                ),
             ),

          ],
        ),
      ),
    );
  }

  _press(int num) {
    setState(() {
      GlobalVariables.selectedTap = num;
    });
  }
  _icon(icon, Function() press) {
    return Container(
      height: 25,
      width: 25,
      margin: EdgeInsets.symmetric(horizontal: AppSize.margin20),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: AppColor.mainColor),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          icon,
          color: AppColor.white,
          size: 10,
        ),
      ),
    );
  }

  _add() {
    setState(() {
      widget.item.count == null
          ? widget.item.count = 1
          : widget.item.count = (widget.item!.count! + 1);
      print(widget.item.count.toString());

      bool update = false;
      for (var c in GlobalVariables.cartList) {
        if (c.item == widget.item)
          update = true;
      }
      if (!update)
        GlobalVariables.cartList.add(CartListModule(item: widget.item));

      widget.refresh!();


    });

  }

  _minimise() {
    setState(() {
      widget.item.count == 1
          ? widget.item.count = null
          : widget.item.count = (widget.item.count! -1);
      //print(widget.item.count.toString());

      bool update = false;

      if(widget.item.count == null) {
        GlobalVariables.cartList.removeWhere((element) => element.item == widget.item);
        print(GlobalVariables.cartList.length.toString());


      }
      widget.refresh!();


    });
  }
}

