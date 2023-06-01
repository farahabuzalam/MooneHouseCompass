import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/cartListModule.dart';
import 'package:testproject/modules/itemContainerModule.dart';

class DetailScreen extends StatefulWidget {
  ItemContainerModule item;
  DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    if (widget.item.count != null)
    _count = widget.item.count!;
    super.initState();
  }
  int _count = 1;
  //int cartItems = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:

      Padding(
        padding: EdgeInsets.all(AppSize.padding10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Expanded(
              child: ListView(
                children : [
                      Stack(
                        children: [Container(
                          child: Padding(
                              padding: EdgeInsets.all(AppSize.padding10),
                              child: Image.network(widget.item.image)
                          ),
                        ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container (
                                  decoration: new BoxDecoration(shape: BoxShape.circle,
                                    color: Colors.white38,
                                    border: Border.all(color:Colors.white38 ),

                                  ),

                                  child:IconButton(onPressed: ()=> share(),
                                      icon: Icon(Icons.share_outlined, color: AppColor.mainColor,))
                              )
                          ),
                      ]),
                  Row(
                      children: [
                        Text(widget.item.name, style: TextStyle(fontSize: 40, color: Colors.green)),
                        Spacer(),
                        Icon(Icons.star, color: Colors.yellow, size: 30),
                        Text(widget.item.rating, style: TextStyle(fontSize: 20, color: Colors.black)),
                      ]
                  ),
                  SizedBox(height: AppSize.margin20,),

                  _printdetail(widget.item.details),

                     Row(
                       children: [
                         Text(
                          widget.item.price.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.green),
                         ),
                         SizedBox(width: 15),

                           Visibility(
                               visible: widget.item.isDeal,
                               child:
                           Text(widget.item.oldPrice.toString(), style: TextStyle(fontSize: 20, decoration: TextDecoration. lineThrough),))

                       ],
                     ),

                  _printdetail(widget.item.brand),
                  _printdetail(widget.item.wight),
                  _printdetail(widget.item.origin),
                   ]
                  ),
            ),

          Container(
            height: 70,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              children: [
                _icon(Icons.remove, () => _minimise()),
                  Text(_count.toString(),
                  style: TextStyle(
                      fontSize: 25,
                      color: AppColor.red,
                      backgroundColor:
                      AppColor.white.withOpacity(0.3)),
                ),
                _icon(Icons.add, () => _add()),
                Spacer(),
                TextButton(
                    onPressed: ()=> _addToCart(),

                    style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                    child: Text('Add to cart'.tr(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    )
                )
              ],



            ),
          ),



      ],
    ),
      ),


    );
  }

  _printdetail(text) {
    return Text(
        text,
        style: TextStyle(fontSize: 20),
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
     _count ++;
      print(_count.toString());
    });
  }

  _minimise() {
    setState(() {
      _count == 1
          ? _count = 1
          :_count = (_count - 1);
      print(_count.toString());
    });
  }

  _addToCart()
  {
    bool update = false;
    for(var c in GlobalVariables.cartList)
    {
      if(c.item == widget.item)
        update = true;

    }
    if (!update)
      GlobalVariables.cartList.add(CartListModule(item: widget.item));


    widget.item.count = _count;
    Navigator.pop(context, );

  }

  Future<void> share() async {
    await FlutterShare.share(
      title: 'Example share',
      text: 'Example share text',
      //chooserTitle: 'Example Chooser Title'
    );
  }

}
