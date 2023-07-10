import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';

class NotConnected extends StatefulWidget {
  const NotConnected({Key? key}) : super(key: key);

  @override
  State<NotConnected> createState() => _NotConnectedState();
}

class _NotConnectedState extends State<NotConnected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(AppSize.padding10),
        child: Center(
          child:

              Column(children: [
                SizedBox(height:100),
                Icon(Icons.signal_wifi_off_outlined, color: AppColor.mainColor, size: 100),
              SizedBox(height: 20),
              Text("You are not connected to the internet. \nCheck connection and try again.",
              style: TextStyle(color: AppColor.black, fontSize: 30, ), textAlign: TextAlign.center,)

              ])


        ),
      )
    );
  }
}
