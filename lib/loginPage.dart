import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

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
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(
                  onPressed: () => Navigator.pop(
                        context,
                      ),
                  icon: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColor.mainColor)),
                      child: Icon(
                        Icons.close_outlined,
                        color: AppColor.mainColor,
                      )))
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
                                    border: Border.all(
                                        color: _details == 1
                                            ? AppColor.mainColor
                                            : AppColor.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Text(
                                  'By Phone',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: _details == 1
                                          ? AppColor.mainColor
                                          : AppColor.black),
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
                                    border: Border.all(
                                        color: _details == 2
                                            ? AppColor.mainColor
                                            : AppColor.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Text(
                                  'By Email',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: _details == 2
                                          ? AppColor.mainColor
                                          : AppColor.black),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ]),
                    SizedBox(height: 30),
                    Container(
                        padding: EdgeInsets.all(AppSize.padding10),
                        child: _details == 1 ? _byPhone() : _byEmail())
                  ])),
            ),
          ],
        ),
      ),
    );
  }

  _byEmail() {
    return Material(
      color: AppColor.white,
      child: Container(
        height: 420,
        child: RawScrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Password',
                      icon: Icon(Icons.lock_outline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: ()=> null,
                    style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                    child: Text('Login',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    )
                ),
                SizedBox(
                  height: 20,
                ),

                  SocialLoginButton(
                        buttonType: SocialLoginButtonType.apple,
                        onPressed: () {},
                  ),

                  const SizedBox(height: 10),
                  SocialLoginButton(
                        buttonType: SocialLoginButtonType.facebook,
                        onPressed: () {},
                  ),

                  const SizedBox(height: 10),
                  SocialLoginButton(
                        buttonType: SocialLoginButtonType.google,
                        onPressed: () {},),


                SizedBox(
                  height: 20,
                ),

                Text("Don't have an account?",
                    style:
                    TextStyle(fontSize: 17, color: AppColor.mainColor)
                ,textAlign: TextAlign.center,),

                TextButton(

                    onPressed: ()=> null,
                    style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                    child: Text('Register',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  _byPhone() {
    return Material(
      color: AppColor.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
          Text(
      'Mobile number :',
      textAlign: TextAlign.start,
          ),
          SizedBox(
      height: 20,
          ),


      SizedBox(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          hintText: 'XX XXX XXXX',
          icon: Icon(Icons.phone_outlined),
        ),
      ),
          ),
            SizedBox(
              height: 20,
            ),
            TextButton(

                onPressed: ()=> null,
                style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                child: Text('Continue',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                )
            )
      ]),
    );
  }
}
