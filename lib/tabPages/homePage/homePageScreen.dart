import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:testproject/categories/categoryCont.dart';
import 'package:testproject/categories/mainCategoryModule.dart';
import 'package:testproject/categories/subCategoryModule.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/modules/slideModule.dart';
import 'package:testproject/productScreen.dart';
import 'package:testproject/sharedWidgets/itemContainer.dart';

class HomePageScreen extends StatefulWidget {
  Function() refresh;
   HomePageScreen({Key? key,required this.refresh}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  List<ItemContainerModule> _ramadanList = [];
  List<ItemContainerModule> _ramadanBest = [];
  List<ItemContainerModule> _ramadanRecent = [];
  List<Slide> _slideList = [];
  List<MainCategoryModule> _mainCategories = [];
  List<SubCategoryModule> _dairyProducts = [];
  List<SubCategoryModule> _nutProducts = [];
  List<SubCategoryModule> _olivesAndOils = [];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _olivesAndOils.add(SubCategoryModule(
        categoryName: "Olive Oil",
        list: null,
        image: "https://chriskresser.com/wp-content/uploads/177433263.jpg")
    );

    _olivesAndOils.add(SubCategoryModule(
        categoryName: "Green Olive",
        list: null,
        image: "https://uploads-ssl.webflow.com/5cf62806c6188329a4fafe4b/5cf62806c61883599ffaff44_green_edit.jpg")
    );


    _olivesAndOils.add(SubCategoryModule(
        categoryName: "Black Olive",
        list: null,
        image: "https://www.ccfinefoods.co.uk/wp-content/uploads/11-015-black-pitted-olives.jpg")
    );


    _olivesAndOils.add(SubCategoryModule(
        categoryName: "Vegetable Oil",
        list: null,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq6ICoZg1AI_XQx4YP8Jv2Chl6_xViDTc9AQ&usqp=CAU")
    );



    _dairyProducts.add(SubCategoryModule(
        categoryName: "Milk",
        list: null,
        image: "https://atlas-content-cdn.pixelsquid.com/stock-images/milk-bottle-jug-AvXMAk9-600.jpg")
    );

    _dairyProducts.add(SubCategoryModule(
        categoryName: "Cheese",
        list: null,
        image: "https://www.mashed.com/img/gallery/almost-a-third-of-all-people-think-this-is-the-best-cheese/intro-1615316663.jpg")
    );

    _dairyProducts.add(SubCategoryModule(
        categoryName: "Yoghurt",
        list: null,
        image: "https://cdnprod.mafretailproxy.com/sys-master-root/h67/hfd/32565290074142/466738_main.jpg_480Wx480H")
    );

    _nutProducts.add(SubCategoryModule(
        categoryName: "Fresh Nuts",
        list: null,
        image: "https://www.dorri.co.uk/wp-content/uploads/2018/09/raw_mixed_nuts.jpeg")
    );

    _nutProducts.add(SubCategoryModule(
        categoryName: "Toasted Nuts",
        list: null,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSXrI8Zp-gt9dTWmNrWFXbP8MoRMIa6zribA&usqp=CAU")
    );


    _mainCategories.add(MainCategoryModule(
        categoryName: "Dairy and Cheese Products",
        list: _dairyProducts,
        image: "https://www.foodsafetynews.com/files/2020/03/cheese-assortment-with-milk.jpg")
    );

    _mainCategories.add(MainCategoryModule(categoryName: "Nuts",
        list: _nutProducts,
        image: "https://s12857.pcdn.co/en-US/blog/wp-content/uploads/2019/05/190513_NutsForNuts.jpg")
    );
    
    _mainCategories.add(MainCategoryModule(
        categoryName: "Olives and Oils",
        list: _olivesAndOils,
        image: "https://cdn.britannica.com/55/157155-050-D07F5610/Containers-olive-oil.jpg")
    );

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
        brand: 'Brand: Moonehouse',
    isDeal: false,
        oldPrice: 64));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 18));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 76));

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
        details: 'green and black olives',
        isDeal: false,
        oldPrice: 9));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 20));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 15));

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
        origin: 'Origin: UAE',
        isDeal: false,
        oldPrice: 12));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 7));

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
        brand: 'Brand: MooneHouse',
        isDeal: false,
        oldPrice: 7));

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

    _ramadanBest = GlobalVariables.bestSellerProducts;
    _ramadanRecent = GlobalVariables.recentlyAddedProducts;
    _ramadanList = GlobalVariables.essentialsProducts;

    return Expanded(
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
              _text("Categories".tr()),
              SizedBox(
                height: AppSize.margin20,
              ),
              _categoryHorizontalList(_mainCategories),



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




    _horizontalList(List<ItemContainerModule> list) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: list.map((e) => ItemContainer(item: e, refresh: ()=> widget.refresh())).toList(),
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

  _categoryHorizontalList(List<MainCategoryModule> list) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: list.map((e) => CategoryCont(item: e)).toList(),
          ),
        ],
      ),
    );
  }


}
