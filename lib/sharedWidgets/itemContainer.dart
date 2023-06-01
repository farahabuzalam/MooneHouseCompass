import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/detailScreen.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/cartListModule.dart';
import 'package:testproject/modules/itemContainerModule.dart';


class ItemContainer extends StatefulWidget {


  ItemContainerModule item;
  Function()? refresh;
  ItemContainer(
      {Key? key,
        required this.item,
       this.refresh})
      : super(key: key);

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.trans,
          border: Border.all(color: AppColor.mainColor),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.curve)),
        ),
        padding: EdgeInsets.symmetric(
            vertical: AppSize.padding10, horizontal: AppSize.padding10),
        margin: EdgeInsets.symmetric(horizontal: AppSize.margin20),
        width: MediaQuery.of(context).size.width / 1.7,
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.item.off,
                  style: TextStyle(color: AppColor.red),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: AppColor.yellow,
                ),
                Text(
                  widget.item.rating,
                  style: TextStyle(color: AppColor.black),
                ),
              ],
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    widget.item.image,
                    fit: BoxFit.cover,
                    height: AppSize.itemImageHight,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: AppSize.itemImageHight,
                    alignment: Alignment.bottomCenter,
                    //color: AppColor.black.withOpacity(0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(AppSize.padding10),
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.curve),
                  ),
                ),
                child: Text(
                  '${widget.item.price}',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColor.black,
                      backgroundColor: AppColor.yellow,
                      fontSize: 20),
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '${widget.item.wight},\n ${widget.item.name}',
                  style: TextStyle(color: AppColor.black, fontSize: 15),
                )),
          ],
        ),
      ),
    onTap: ()=> Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  DetailScreen(item: widget.item))).then((value) => setState((){widget.refresh!();})),

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
      widget.item.count == null
          ? widget.item.count = 1
          : widget.item.count = (widget.item.count! + 1);
      print(widget.item.count.toString());

      bool update = false;
      for(var c in GlobalVariables.cartList)
        {
          if(c.item == widget.item)
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
          : widget.item.count = (widget.item.count! - 1);
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
