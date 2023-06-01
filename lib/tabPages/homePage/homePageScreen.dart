import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/modules/slideModule.dart';
import 'package:testproject/productScreen.dart';
import 'package:testproject/sharedWidgets/itemContainer.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  List<ItemContainerModule> _ramadanList = [];
  List<ItemContainerModule> _ramadanBest = [];
  List<ItemContainerModule> _ramadanRecent = [];
  List<Slide> _slideList = [];



  @override
  void initState() {
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
  }

  Widget build(BuildContext context) {
    return   Expanded(
          child: Padding(
            padding: EdgeInsets.all(AppSize.padding10),
            child: ListView(children: [
              ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  children: _slideList.map((e) => _sliderImage(e)).toList(),
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true),
              SizedBox(
                height: AppSize.margin20,
              ),
              _text("Ramadan Essentials".tr()),
              SizedBox(
                height: AppSize.margin20,
              ),
              _horizontalList(_ramadanList),
              SizedBox(
                height: AppSize.margin20,
              ),
              _text("Best Sellers".tr()),
              SizedBox(
                height: AppSize.margin20,
              ),
              _horizontalList(_ramadanBest),
              SizedBox(
                height: AppSize.margin20,
              ),
              _text("Recently Added".tr()),
              SizedBox(
                height: AppSize.margin20,
              ),
              _horizontalList(_ramadanRecent),
              SizedBox(
                height: AppSize.margin20,
              ),
              /*Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 2.5,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: _ramadanList.length,
                                      itemBuilder: (context, index){
                                        return ItemContainer(item: _ramadanList[index]);
                                      }),
                                  //scrollDirection: Axis.horizontal,
                                ),
                              ),*/
            ]),
          ),
        );
  
  }

  _press(int num) {
    setState(() {
      GlobalVariables.selectedTap = num;

    });
  }

  _setState() {
    setState(() {

    });
  }

    _horizontalList(List<ItemContainerModule> list) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: list.map((e) => ItemContainer(item: e, refresh: ()=> _setState())).toList(),
        ),
      );
    }

    _text(text) {
      return Text(
        text,
        style: TextStyle(fontSize: 20),
      );
    }

    Widget _sliderImage(Slide s) {
      return GestureDetector(
        child: Image.network(s.image, fit: BoxFit.cover),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductScreen()),
        ),
      );
    }



}
