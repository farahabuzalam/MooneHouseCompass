import 'package:flutter/material.dart';
import 'package:testproject/categories/subCategoryCont.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/categories/mainCategoryModule.dart';
import 'package:testproject/constants/appsize.dart';

class CategoryCont extends StatefulWidget {

  MainCategoryModule item;

   CategoryCont({Key? key, required this.item}) : super(key: key);

  @override
  State<CategoryCont> createState() => _CategoryContState();
}

class _CategoryContState extends State<CategoryCont> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: AppSize.margin20),
            width: MediaQuery.of(context).size.height/1.7,
            height: MediaQuery.of(context).size.height/3.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColor.mainColor)
            ),
            child:
            Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                            borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                        child: Image.network(widget.item.image, fit:BoxFit.fitHeight)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomLeft:Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        )
                    ),

                    alignment: Alignment.bottomCenter,
                    width:double.infinity,

                    child: Text(widget.item.categoryName,style: TextStyle(color: AppColor.black,),
                    ),
                  )


                ]
            ),
        ),

     SizedBox(height: 20),

     SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: widget.item.list.map((e) => SubCategoryCont(item: e, num: widget.item.list.length)).toList(),
    ),

    )

      ],
    );
  }
}
