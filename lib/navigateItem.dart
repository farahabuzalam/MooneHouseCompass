import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/itemContainerModule.dart';

class NavigateItem extends StatefulWidget {

  Icon navigateIcon;
  String navigateItem;
  int pageNumber;
  bool selected = false;
  Function() press;


   NavigateItem(
       {Key? key,
     required this.navigateItem,
    required this.navigateIcon,
         required this.pageNumber,
         required this.press
  }) : super(key: key){
     if(GlobalVariables.selectedTap == pageNumber)
       selected = true;
   }


  @override
  State<NavigateItem> createState() => _NavigateItemState();
}

class _NavigateItemState extends State<NavigateItem> {



  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
              Stack(
                children:
             [
            Container(
          decoration: BoxDecoration(
                color: widget.selected? AppColor.white: AppColor.trans,
                shape: BoxShape.circle,
                border: Border.all(color: widget.selected? AppColor.mainColor: AppColor.trans)
            ),
          child:
            IconButton(onPressed: widget.press, icon: widget.navigateIcon),

      ),


          Visibility(
            visible: (widget.pageNumber == 2),
            child: Positioned(
              top:2,
              right: 0.5,
              child: Container(
                width: 22,
                height: 22,
                child: Text(
                  GlobalVariables.cartList.length.toString(),
                  style: TextStyle(color: AppColor.white), textAlign: TextAlign.center,),
                decoration: BoxDecoration(
                  color:  AppColor.red,
                  shape: BoxShape.circle,
                  border: Border.all(color:AppColor.red
                ),
              ),
                ),
            ),
          )

            ]
        ),

        Text(widget.navigateItem, style: TextStyle(color: widget.selected? AppColor.mainColor: AppColor.black),),
    ]
    );
  }


}
