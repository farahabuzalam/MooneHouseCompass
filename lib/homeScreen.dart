import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/slideModule.dart';
import 'package:testproject/navigateItem.dart';
import 'package:testproject/productScreen.dart';
import 'package:testproject/modules/itemContainerModule.dart';
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
  /*void initState() {
    // TODO: implement initState
    super.initState();

    _ramadanList.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'pinenuts',
        wight: 'Weight: 100',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/صنوبر-removebg-preview.png',
        price: 64,
        details: 'these are pinenuts',
        origin: 'Origin: UAE',
        brand: 'Brand: Moonehouse'));

    _ramadanList.add(ItemContainerModule(
        off: 'off',
        rating: '3',
        name: 'bread',
        wight: 'Weight: 60',
        image:
            'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS8HZMshXl-xDrocf6mkSWbwO0kBlN8jevgz5sfWj9UDQpYmoc&usqp=CAc',
        price: 18,
        origin: 'Origin: UAE',
        details: 'freshly baked bread',
        brand: 'Brand: MooneHouse'));

    _ramadanList.add(ItemContainerModule(
        off: 'off',
        rating: '4',
        name: 'flour',
        wight: 'Weight: 70',
        image:
            'https://www.eatdat.com/wp-content/uploads/2021/11/Oat-Flour-e1638285431540.jpg',
        price: 76,
        origin: 'Origin: UAE',
        details: 'whole-wheat flour',
        brand: 'Brand: MooneHouse'));

    _ramadanBest.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'olives',
        wight: 'Weight: 100',
        image:
            'https://cdn.create.vista.com/api/media/small/250183782/stock-photo-green-olives-with-leaves-isolated',
        price: 9,
        origin: 'Origin: UAE',
        brand: 'Brand: MooneHouse',
        details: 'green and black olives'));

    _ramadanBest.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'vimto',
        wight: 'Weight: 50',
        image:
            'https://www.sharjahcoop.ae/medias/6281034001063-1200Wx1200H-001.jpg?context=bWFzdGVyfHNjc3w5MzkxOHxpbWFnZS9qcGVnfGFEazJMMmhtWmk4NU1EazRORE0yT1RBeU9UUXlMell5T0RFd016UXdNREV3TmpOZk1USXdNRmQ0TVRJd01FaGZNREF4TG1wd1p3fGUwNTM0Y2Y0NzBiNWY5ZTNkODcyZGI5ZWMxNDM5MmJmNjJjMTA5NWQ3Yjc1YWU0ZWU0OWFkY2ViMmExMjU5MmU',
        price: 20,
        origin: 'Origin: UAE',
        details: 'low sugar',
        brand: 'Brand: MooneHouse'));

    _ramadanBest.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'sambosa',
        wight: 'Weight: 80',
        image:
            'https://www.sharjahcoop.ae/medias/6281073110429-1200Wx1200H-001.jpg?context=bWFzdGVyfHNjc3w3OTM4N3xpbWFnZS9qcGVnfGFHSXpMMmcwT0M4NU1UZzFPVE0zTWpZd05UYzBMell5T0RFd056TXhNVEEwTWpsZk1USXdNRmQ0TVRJd01FaGZNREF4TG1wd1p3fGQ5MTRiZTk5N2I2NDhiMWNjZGFkNDg0NjA3ZDEyMTdkMjMwN2VkNDRlZWQyMDdmMGQ2NTc0Yzk2ODgxNTk0MmY',
        price: 15,
        origin: 'Origin: UAE',
        details: 'frozen sambosa dough',
        brand: 'Brand: MooneHouse'));

    _ramadanRecent.add(ItemContainerModule(
        off: 'off',
        rating: '3.7',
        name: 'cheese',
        wight: 'Weight: 65',
        image:
            'https://www.sharjahcoop.ae/medias/6291029500051-1200Wx1200H-001.jpg?context=bWFzdGVyfHNjc3wxNzQwMjR8aW1hZ2UvanBlZ3xjMk56TDJoaU55OW9Zak12T0RnNE1qa3hOakU1TmpNNE1pNXFjR2N8MDllOTg0MDg1YWM2OWU3YWIwMmFhOTQ4YzFlZTA5N2E2NjZjZGM0OWEzNDYyNDYzNzAxZTRmOWY2NTEzMjFiZQ',
        price: 12,
        details: 'akawi cheese',
        brand: 'Brand: MooneHouse',
        origin: 'Origin: UAE'));

    _ramadanRecent.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'pistachio',
        wight: 'Weight: 75',
        image:
            'https://img.freepik.com/premium-photo/pistachio-nuts-with-green-leaves-isolated-white-background_252965-390.jpg',
        price: 7,
        origin: 'Origin: UAE',
        details: 'some pistachio',
        brand: 'Brand: MooneHouse'));

    _ramadanRecent.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'almonds',
        wight: 'Weight: 75',
        image:
            'https://img.freepik.com/premium-photo/almonds-isolated-white-background_252965-339.jpg',
        price: 7,
        origin: 'Origin: UAE',
        details: 'some almonds',
        brand: 'Brand: MooneHouse'));

    _slideList.add(Slide(
        image:
            'https://www.moonehouse.com/MooneHouseApi/Images/Promotions/OFFER2.jpg',
        id: '0'));

    _slideList.add(Slide(
        image:
            'https://www.moonehouse.com/MooneHouseApi/Images/Promotions/ZAM_2.jpg',
        id: '0'));

    _slideList.add(Slide(
        image:
            'https://www.moonehouse.com/MooneHouseApi/Images/Promotions/w%D8%B9%D8%B1%D8%B6%D8%A7%D9%84%D9%85%D9%83%D8%B3%D8%B1%D8%A7%D8%AA.jpg',
        id: '0'));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

            GlobalVariables.selectedTap == 0? HomePageScreen()
            : GlobalVariables. selectedTap == 1? DealPageScreen()
            //: GlobalVariables.selectedTap == 2? CartPage()
            //: GlobalVariables.selectedTap == 3? BrandPage()
            :  ProfilePage(),

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
                        press: () => _press(0),
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
                    ])),
          ],
        ));
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

}
