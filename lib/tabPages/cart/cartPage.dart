import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/navigateItem.dart';
import 'package:testproject/sharedWidgets/itemContainer.dart';

import '../../constants/appsize.dart';
import '../../globalVariables.dart';
import '../../modules/cartListModule.dart';
import '../../modules/itemContainerModule.dart';

class CartPage extends StatefulWidget {
  ItemContainerModule item;
  Function()? refresh;

   CartPage({Key? key,required this.item}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
  }

  class _CartPageState extends State<CartPage> {


  @override
  Widget build(BuildContext context) {
    //print(GlobalVariables.cartList[0].item);
    return Expanded(child:  Container (
          child: Row(
            children: [
              Image.network(
                widget.item.image,
                fit: BoxFit.fill,
                height: AppSize.itemImageHight,
              ),
              Column(
                children: [
                  Text(
                    '${widget.item.name},\n ${widget.item.price}',
                    style: TextStyle(color: AppColor.black, fontSize: 20),
                  )
                ]

              ),
              Column(
                children: [ Row(
                  children:[
                  widget.item.count == null
                      ? SizedBox()
                      : _icon(Icons.remove, () => _minimise()),
                  widget.item.count == null
                      ? SizedBox()
                      : Text(
                    widget.item.count.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColor.red,
                        backgroundColor:
                        AppColor.white.withOpacity(0.3)),
                  ),
                  _icon(Icons.add, () => _add()),

                    Text(
                      '${widget.item.price}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.black,
                          backgroundColor: Colors.grey,
                          fontSize: 20),
                    ),
                    NavigateItem( navigateItem: 'trash'.tr(),
                        navigateIcon: Icon(Icons.delete_outline),
                        pageNumber: 2,
                        press: () => _press(2),),
                  ],
                ),
                ],
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

    });
    widget.refresh!();
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
        widget.refresh!();
      }
    });
  }
 }
