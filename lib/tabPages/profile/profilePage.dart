import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/loginPage.dart';
import 'package:testproject/tabPages/profile/profileCont.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:testproject/tabPages/profile/profileDetails.dart';

class ProfilePage extends StatefulWidget {
  Function() refresh;
  ProfilePage({Key? key, required this.refresh}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  _changeLang() {
    context.locale == Locale('en')
        ? context.setLocale(Locale('ar'))
        : context.setLocale(Locale('en'));
  }

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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(AppSize.padding10),
              child: Row(children: [
                Spacer(),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white,
                        border: Border.all(color: AppColor.white)),
                    child: IconButton(
                        onPressed: () => share(),
                        icon: Icon(
                          Icons.share_outlined,
                          color: AppColor.mainColor,
                        )))
              ]),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                  padding: EdgeInsets.all(AppSize.padding10),
                  children: [
                    ProfileCont(
                      label: 'Account'.tr(),
                      contIcon: Icon(
                        Icons.account_circle_outlined,
                        color: AppColor.mainColor,
                        size: 30,
                      ),
                      press: () => GlobalVariables.person == null
                          ? _login()
                          : _details(),
                    ),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'My Orders'.tr(),
                        contIcon: Icon(
                          Icons.shopping_cart_checkout_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Favorites'.tr(),
                        contIcon: Icon(
                          Icons.favorite,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Change Password'.tr(),
                        contIcon: Icon(
                          Icons.lock_clock_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Address'.tr(),
                        contIcon: Icon(
                          Icons.perm_contact_cal_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Refund Policy'.tr(),
                        contIcon: Icon(
                          Icons.question_mark_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Privacy Policy'.tr(),
                        contIcon: Icon(
                          Icons.privacy_tip_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Terms of Use'.tr(),
                        contIcon: Icon(
                          Icons.info_outline,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: 'Contact Us'.tr(),
                        contIcon: Icon(
                          Icons.phone,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => null),
                    SizedBox(height: 20),
                    ProfileCont(
                        label: GlobalVariables.person == null
                            ? 'Login'.tr()
                            : 'Logout'.tr(),
                        contIcon: Icon(
                          Icons.power_settings_new_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => GlobalVariables.person == null
                            ? _login()
                            : _clearBox()),
                    SizedBox(height: 20),
                    ProfileCont(
                        label:
                            context.locale == Locale('en') ? "عربي" : "English",
                        contIcon: Icon(
                          Icons.language_outlined,
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                        press: () => _changeLang()),
                    SizedBox(height: 20),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
      title: 'Example share',
      text: 'Example share text',
      //chooserTitle: 'Example Chooser Title'
    );
  }

  _login() {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()))
        .then((value) => setState(() {}));
  }

  _details() {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfileDetails()))
        .then((value) => setState(() {}));
  }

  _clearBox() async {
    Box box = await Hive.openBox(AppStrings.personBox);
    box.clear();
    GlobalVariables.person = null;

    Box box2 = await Hive.openBox(AppStrings.cartBox);
    box2.clear();
    GlobalVariables.cartList.clear();

    /* Box cartBox = await Hive.openBox(AppStrings.cartBox);
      cartBox.clear();
     GlobalVariables.cartList.clear();*/

    widget.refresh();
  }
}
