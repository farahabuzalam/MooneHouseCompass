import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _details = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://s2.best-wallpaper.net/wallpaper/iphone/1209/Green-theme-background-drops-of-water-on-the-leaves_iphone_640x1136.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
              IconButton(
                  onPressed: ()=> Navigator.pop(context, ),
                  icon: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColor.mainColor)),
                      child: Icon(Icons.close_outlined, color: AppColor.mainColor,)))
            ]),
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(AppSize.padding10),
                  margin: EdgeInsets.all(AppSize.margin20),
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(children: [
                    Text("Login",
                        style:
                            TextStyle(fontSize: 30, color: AppColor.mainColor)),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              _details = 1;
                            }),
                            child: Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(color:_details == 1? AppColor.mainColor: AppColor.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Text(
                                  'By Phone',
                                  style: TextStyle(
                                      fontSize: 20, color:_details == 1? AppColor.mainColor: AppColor.black),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          GestureDetector(
                              onTap: () => setState(() {
                                _details = 2;
                              }),
                            child: Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(color:_details == 2? AppColor.mainColor: AppColor.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Text(
                                  'By Email',
                                  style: TextStyle(
                                      fontSize: 20, color:_details == 2? AppColor.mainColor: AppColor.black),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ]),

                    SizedBox(height:30),
                    Container(
                      child:_details == 1? _byPhone() : _byEmail()
                    )
                  ]
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

  _byEmail(){
    return Material(
      color: AppColor.white,
      child: Container(
        child: Column(

          children: [
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)) ),
                  hintText: 'Email',
                  icon: Icon(Icons.person_outline),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Password',
                  icon: Icon(Icons.lock_outline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _byPhone(){
    return Material(
      color: AppColor.white,
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Mobile number :', textAlign: TextAlign.start,),
            SizedBox(height: 20,),
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Phone number',
                  icon: Icon(Icons.phone_outlined),
                ),
              ),
            ),
          ]
        ),
      ),
    );

  }
}
