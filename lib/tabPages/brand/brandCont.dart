import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';

class BrandCont extends StatefulWidget {
  String image;
  String brandName;

   BrandCont({Key? key, required this.image, required this.brandName}) : super(key: key);

  @override
  State<BrandCont> createState() => _BrandContState();
}

class _BrandContState extends State<BrandCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.mainColor)
      ),
      child:
        Column(
          children: [
            Expanded(child: Image.network(widget.image)),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20)
                )
              ),

              alignment: Alignment.bottomCenter,
              width:double.infinity,

              child: Text(widget.brandName,style: TextStyle(color: AppColor.white,),
                ),
            )


          ]
        )
    );
  }
}
