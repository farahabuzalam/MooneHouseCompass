import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Expanded(
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      Text("Edit Profile",
                          style:
                          TextStyle(fontSize: 30, color: AppColor.mainColor)),

                          SizedBox(
                            height: 25,
                          ),


                      Text('Name'),

                      SizedBox(
                        width: 400,
                        child: Material(
                          color: AppColor.white,
                          child: TextField(
                            controller: TextEditingController(text: GlobalVariables.person!.name),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))),

                              icon: Icon(Icons.person_outlined),
                            ),
                          ),
                        ),
                      ),

                          SizedBox(
                            height: 25,
                          ),


                          Text('Email'),

                          SizedBox(
                            width: 400,
                            child: Material(
                              color: AppColor.white,
                              child: TextField(
                                controller: TextEditingController(text: GlobalVariables.person!.email),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))),

                                  icon: Icon(Icons.email_outlined),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),


                          Text('Phone Number'),

                          SizedBox(
                            width: 400,
                            child: Material(
                              color: AppColor.white,
                              child: TextField(
                                controller: TextEditingController(text: GlobalVariables.person!.phone),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))),

                                  icon: Icon(Icons.phone_outlined),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),



                          Text('City'),

                          SizedBox(
                            width: 400,
                            child: Material(
                              color: AppColor.white,
                              child: TextField(
                                controller: TextEditingController(text: GlobalVariables.person!.city),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))),

                                  icon: Icon(Icons.location_city_outlined),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),





                          SizedBox(height: 30),


                    ]
                    )
                ),
              ),
            ],
          ),
        )

      ),
    );
  }
}
