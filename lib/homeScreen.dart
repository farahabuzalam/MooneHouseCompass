import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testproject/api.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/slideModule.dart';
import 'package:testproject/navigateItem.dart';
import 'package:testproject/productScreen.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/tabPages/brand/brandPage.dart';
import 'package:testproject/tabPages/cart/cartPage.dart';
import 'package:testproject/tabPages/cart/emptyCart.dart';
import 'package:testproject/tabPages/deals/dealPageScreen.dart';
import 'package:testproject/tabPages/homePage/homePageScreen.dart';
import 'package:testproject/tabPages/profile/profilePage.dart';
import 'sharedWidgets/itemContainer.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ItemContainerModule> _ramadanList = [];
  List<ItemContainerModule> _ramadanBest = [];
  List<ItemContainerModule> _ramadanRecent = [];
  List<Slide> _slideList = [];




  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: _onWillPop,

      child: Scaffold(

        //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        //floatingActionButton: FloatingActionButton(
        //  child: Text(context.locale == Locale('en') ? "عربي" : "EN"),
        //  onPressed: () => _changeLang(),
        //),

          appBar: AppBar(
            title: Text(
              "Moone House",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ),
          backgroundColor: AppColor.white,
          body: Column(
            children: [

              GlobalVariables.selectedTap == 0 ? HomePageScreen(refresh:()=> _setState())
                  : GlobalVariables.selectedTap == 1 ? DealPageScreen(refresh: ()=> _setState())
                  : GlobalVariables.selectedTap == 2 && GlobalVariables.cartList.length>0? CartPage(refresh: ()=> _setState())
                  : GlobalVariables.selectedTap == 2 && GlobalVariables.cartList.length==0? EmptyCart(refresh: ()=> _setState())
                  : GlobalVariables.selectedTap == 3? BrandPage(refresh: ()=> _setState())
                  : ProfilePage(refresh: ()=> _setState()),

              Container(
                  height: 100,
                  padding: EdgeInsets.all(AppSize.padding10),
                  color: Colors.grey.withOpacity(0.2),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        NavigateItem(
                          navigateItem: 'Home'.tr(),
                          navigateIcon: Icon(Icons.home_outlined),
                          pageNumber: 0,
                          press: () async  => {
                          await Api().getBestSeller(),
                            await Api().getRecentlyAdded(),
                            await Api().getEssentialProducts(),
                            _press(0),
                          },
                        ),
                        NavigateItem(
                          navigateItem: 'Deals'.tr(),
                          navigateIcon: Icon(Icons.price_check_outlined),
                          pageNumber: 1,
                          press: () => _press(1),
                        ),
                        NavigateItem(
                          navigateItem: 'Cart'.tr(),
                          navigateIcon: Icon(Icons.shopping_bag_outlined),
                          pageNumber: 2,
                          press: () => _press(2),
                        ),
                        NavigateItem(
                          navigateItem: 'Brands'.tr(),
                          navigateIcon: Icon(Icons.shopify_outlined),
                          pageNumber: 3,
                          press: () => _press(3),
                        ),
                        NavigateItem(
                          navigateItem: 'Profile'.tr(),
                          navigateIcon: Icon(Icons.account_circle_outlined),
                          pageNumber: 4,
                          press: () => _press(4),
                        ),
                      ]
                  )
              ),
            ],
          )),
    );
  }

  _setState() {
    setState(() {

    });
  }

  _changeLang() {
    context.locale == Locale('en')
        ? context.setLocale(Locale('ar'))
        : context.setLocale(Locale('en'));
  }

  _press(int num) {
    setState(() {
      GlobalVariables.selectedTap = num;
    });
  }

  Future<bool> _onWillPop() async {
    if(GlobalVariables.selectedTap != 0)
      setState(() {
        GlobalVariables.selectedTap = 0;
      });
     return false;
  }
}
