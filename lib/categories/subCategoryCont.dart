import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/categories/subCategoryModule.dart';
import 'package:testproject/constants/appsize.dart';

class SubCategoryCont extends StatefulWidget {
  SubCategoryModule item;
  int num;
   SubCategoryCont({Key? key, required this.item, required this.num}) : super(key: key);

  @override
  State<SubCategoryCont> createState() => _SubCategoryContState();
}

class _SubCategoryContState extends State<SubCategoryCont> {
  @override
  Widget build(BuildContext context) {
    return Container(

        width: MediaQuery.of(context).size.width/widget.num,
        height: MediaQuery.of(context).size.height/5.5,
        margin: EdgeInsets.symmetric(horizontal: AppSize.margin20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColor.mainColor)
        ),
        child:
        Expanded(child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.network(widget.item.image, fit: BoxFit.fill)))
    );
  }
}
