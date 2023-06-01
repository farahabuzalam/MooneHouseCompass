import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';

class ProfileCont extends StatefulWidget {
  String label;
  Icon contIcon;
  Function() press;


   ProfileCont({Key? key,
    required this.label,
    required this.contIcon,
     required this.press
  }) : super(key: key);

  @override
  State<ProfileCont> createState() => _ProfileContState();
}

class _ProfileContState extends State<ProfileCont> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> widget.press(),
      child: Container(
        padding: EdgeInsets.all(AppSize.padding10),

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.trans),
        color: AppColor.white),


        height: 60,
        width: 20,
        child: Row(

          children:
            [

              widget.contIcon, SizedBox(width: 30), Text(widget.label, style: TextStyle(fontSize: 27),)
            ]
        )

      ),
    );
  }
}

