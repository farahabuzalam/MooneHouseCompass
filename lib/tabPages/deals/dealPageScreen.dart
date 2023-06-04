import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/tabPages/deals/dealsCont.dart';


class DealPageScreen extends StatefulWidget {
  const DealPageScreen({Key? key}) : super(key: key);

  @override
  State<DealPageScreen> createState() => _DealPageScreen();
}

class _DealPageScreen extends State<DealPageScreen> {
  List<ItemContainerModule> _bundles = [];
  List<ItemContainerModule> _Above50 = [];
  List<ItemContainerModule> _Below50 = [];
  List<ItemContainerModule> _BuyOneGetOne = [];
  List<ItemContainerModule> _FreeDelivery = [];

  int dealTap = 0;

  get scrollDirection => null;

  @override
  void initState() {
// TODO: implement initState
    super.initState();

    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'Eid Offer ',
        wight: 'Weight: 100',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/22و.jpg',
        price: 196,
        details: 'Chocolates and Dates set',
        origin: 'Origin: UAE',
        brand: 'Brand: Moonehouse',
        isDeal: true,
        oldPrice: 200));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '3',
        name: 'Zamzam Water Offer',
        wight: 'Weight: 60',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/ZAM1.jpg',
        price: 300,
        origin: 'Origin: UAE',
        details: 'Refreshing Water',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 400));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '4',
        name: 'Olive Oil 5L Offer',
        wight: 'Weight: 70',
        image:
            'https://www.eatdat.com/wp-content/uploads/2021/11/Oat-Flour-e1638285431540.jpg',
        price: 175,
        origin: 'Origin: UAE',
        details: 'Freshly extracted oil',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 200));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '3.7',
        name: 'Ramadan Mix Juice',
        wight: 'Weight: 65',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/عصائر_رمضان.png',
        price: 48,
        details: 'Refreshing juices with mulyiple flavors',
        brand: 'Brand: MooneHouse',
        origin: 'Origin: UAE',
        isDeal: true,
        oldPrice: 150));

    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'Arabic Spices Offer',
        wight: 'Weight: 75',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-5bd5982f-5bfb-4497-9e4f-9b27828b4f4c.jpg',
        price: 42,
        origin: 'Origin: UAE',
        details: 'Essential spices in everyday cooking',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 100));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Rice Offer',
        wight: 'Weight: 75',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-1ee71984-1712-4d9c-9398-bf85c1e46b22.jpg',
        price: 72,
        origin: 'Origin: UAE',
        details: 'Multi-grain rice',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 80));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'Foul Broad Beans',
        wight: 'Weight: 100',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Foul.jpg',
        price: 5,
        origin: 'Origin: UAE',
        brand: 'Brand: MooneHouse',
        details: 'Fresh beans',
        isDeal: true,
        oldPrice: 10));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'Sunflower Seed Kernal',
        wight: 'Weight: 50',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/بزر_دوار_الشمس.jpg',
        price: 5,
        origin: 'Origin: UAE',
        details: 'low sugar',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 10));

    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'Al Mihbash Plantation Coffee',
        wight: 'Weight: 68',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/قهوة_2.png',
        price: 27,
        origin: 'Origin: UAE',
        details: 'Strong arabic coffee',
        brand: 'Brand: Al Mihbash',
        isDeal: true,
        oldPrice: 30));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '3.7',
        name: 'Al Mihbash Brazilian Coffee',
        wight: 'Weight: 40',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/قهوة_3.png',
        price: 27,
        details: 'Fresh brazilian coffee',
        brand: 'Brand: Al Mihbash',
        origin: 'Origin: UAE',
        isDeal: true,
        oldPrice: 30));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'Al Shaalan Dried Molokhia Leaves ',
        wight: 'Weight: 90',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/ملوخية_الشعلان_200_غ.png',
        price: 18,
        origin: 'Origin: UAE',
        details: 'Fresh molokhia leaves ',
        brand: 'Brand: Alshaalan',
        isDeal: true,
        oldPrice: 20));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Al Mihbash Brazilian Coffee',
        wight: 'Weight: 85',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/قهوة_1.png',
        price: 27,
        origin: 'Origin: UAE',
        details: 'Fresh saudi coffee',
        brand: 'Brand: Al Mihbash',
        isDeal: true,
        oldPrice: 30));

    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Green Bean',
      wight: 'Weight: 42',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-19f61994-724f-4a40-b000-ebbe5276c53c.jpg',
      price: 10,
      origin: 'Origin: UAE',
      details: 'Frozen green beans',
      brand: 'Brand: MooneHouse',
      isDeal: true,
      oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Okra',
      wight: 'Weight: 36',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-a62efe15-7d68-41bd-9b8f-31e03777b661.jpg',
      price: 12,
      origin: 'Origin: UAE',
      details: 'Frozen okra',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'almonds',
      wight: 'Weight: 28',
      image:
          'https://img.freepik.com/premium-photo/almonds-isolated-white-background_252965-339.jpg',
      price: 14,
      origin: 'Origin: UAE',
      details: 'Some almonds',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Molokhia',
      wight: 'Weight: 35',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-d207bc88-529a-4ace-be5f-6b8e0a462cc4.jpg',
      price: 12,
      origin: 'Origin: UAE',
      details: 'Frozen molokhia',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));

    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Moone Package',
        wight: 'Weight: 290',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-77b4fc9a-7229-4d13-bcdb-4e29ab8c190a.jpg',
        price: 245,
        origin: 'Origin: UAE',
        details:
            'Palestinian olive oil 1 liter / Palestinian green olives 1 kilo / Palestinian thyme 500 grams / Ghazaleen tea 500 grams / Shelal cheese 250 grams / Majdouleh cheese 250 grams / Syrian Makdous 500 grams / Sage 100 grams / Dried tomatoes 250 grams / Labneh Jarashiya 500 grams / Plain Siniora 500 grams',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 350));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Jordan Honey Offer',
        wight: 'Weight: 115',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-32f8e079-48d9-485c-8b0b-280f5054e542.jpg',
        price: 360,
        origin: 'Origin: UAE',
        details: '1KG Sider Honey / 470g Citrus Honey / 470g Mountain honey',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 450));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'MooneHouse Package',
        wight: 'Weight: 250',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-34e1ca4c-237b-423a-9038-ddb94578186b.jpg',
        price: 330,
        origin: 'Origin: UAE',
        details:
            'MooneHouse package: 5L Palestinian olive oil / 1KG Palestinian green olives / 500g Syrian makdous / 500g Palestinian thyme / 1KG Nabulsi cheese / 100g sage / 60g sumac baladis',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 413));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Olive Oil Offer',
        wight: 'Weight: 32',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-e7e37e0c-782b-4b0f-8141-2063f86369e0.jpg',
        price: 1125,
        origin: 'Origin: UAE',
        details: 'some almonds',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 1150));

    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'Eid Offer ',
        wight: 'Weight: 100',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/22و.jpg',
        price: 196,
        details: 'Chocolates and Dates set',
        origin: 'Origin: UAE',
        brand: 'Brand: Moonehouse',
        isDeal: true,
        oldPrice: 200));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '3',
        name: 'Zamzam Water Offer',
        wight: 'Weight: 60',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/ZAM1.jpg',
        price: 300,
        origin: 'Origin: UAE',
        details: 'Refreshing Water',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 400));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '4',
        name: 'Olive Oil 5L Offer',
        wight: 'Weight: 70',
        image:
            'https://www.eatdat.com/wp-content/uploads/2021/11/Oat-Flour-e1638285431540.jpg',
        price: 175,
        origin: 'Origin: UAE',
        details: 'Freshly extracted oil',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 200));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '3.7',
        name: 'Ramadan Mix Juice',
        wight: 'Weight: 65',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/عصائر_رمضان.png',
        price: 48,
        details: 'Refreshing juices with mulyiple flavors',
        brand: 'Brand: MooneHouse',
        origin: 'Origin: UAE',
        isDeal: true,
        oldPrice: 150));

    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'Arabic Spices Offer',
        wight: 'Weight: 75',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-5bd5982f-5bfb-4497-9e4f-9b27828b4f4c.jpg',
        price: 42,
        origin: 'Origin: UAE',
        details: 'Essential spices in everyday cooking',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 100));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Rice Offer',
        wight: 'Weight: 75',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-1ee71984-1712-4d9c-9398-bf85c1e46b22.jpg',
        price: 72,
        origin: 'Origin: UAE',
        details: 'Multi-grain rice',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 80));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'Foul Broad Beans',
        wight: 'Weight: 100',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Foul.jpg',
        price: 5,
        origin: 'Origin: UAE',
        brand: 'Brand: MooneHouse',
        details: 'Fresh beans',
        isDeal: true,
        oldPrice: 10));
    _Above50.add(ItemContainerModule(
        off: 'off',
        rating: '5',
        name: 'Sunflower Seed Kernal',
        wight: 'Weight: 50',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/بزر_دوار_الشمس.jpg',
        price: 5,
        origin: 'Origin: UAE',
        details: 'low sugar',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 10));

    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '4.5',
        name: 'Al Mihbash Plantation Coffee',
        wight: 'Weight: 68',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/%D9%82%D9%87%D9%88%D8%A9_2.png',
        price: 27,
        origin: 'Origin: UAE',
        details: 'Strong arabic coffee',
        brand: 'Brand: Al Mihbash',
        isDeal: true,
        oldPrice: 30));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '3.7',
        name: 'Al Mihbash Brazilian Coffee',
        wight: 'Weight: 40',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/قهوة_2.png',
        price: 27,
        details: 'Fresh brazilian coffee',
        brand: 'Brand: Al Mihbash',
        origin: 'Origin: UAE',
        isDeal: true,
        oldPrice: 30));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'Al Shaalan Dried Molokhia Leaves ',
        wight: 'Weight: 90',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/ملوخية_الشعلان_200_غ.png',
        price: 18,
        origin: 'Origin: UAE',
        details: 'Fresh molokhia leaves ',
        brand: 'Brand: Alshaalan',
        isDeal: true,
        oldPrice: 20));
    _Below50.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Al Mihbash Brazilian Coffee',
        wight: 'Weight: 85',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/قهوة_1.png',
        price: 27,
        origin: 'Origin: UAE',
        details: 'Fresh saudi coffee',
        brand: 'Brand: Al Mihbash',
        isDeal: true,
        oldPrice: 30));

    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Green Bean',
      wight: 'Weight: 42',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-19f61994-724f-4a40-b000-ebbe5276c53c.jpg',
      price: 10,
      origin: 'Origin: UAE',
      details: 'Frozen green beans',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Okra',
      wight: 'Weight: 36',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-a62efe15-7d68-41bd-9b8f-31e03777b661.jpg',
      price: 12,
      origin: 'Origin: UAE',
      details: 'Frozen okra',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'almonds',
      wight: 'Weight: 28',
      image:
          'https://img.freepik.com/premium-photo/almonds-isolated-white-background_252965-339.jpg',
      price: 14,
      origin: 'Origin: UAE',
      details: 'Some almonds',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));
    _BuyOneGetOne.add(ItemContainerModule(
      off: 'off',
      rating: '4.2',
      name: 'Molokhia',
      wight: 'Weight: 35',
      image:
          'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-d207bc88-529a-4ace-be5f-6b8e0a462cc4.jpg',
      price: 12,
      origin: 'Origin: UAE',
      details: 'Frozen molokhia',
      brand: 'Brand: MooneHouse',
      isDeal: true,
        oldPrice: 100
    ));

    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Moone Package',
        wight: 'Weight: 290',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-77b4fc9a-7229-4d13-bcdb-4e29ab8c190a.jpg',
        price: 245,
        origin: 'Origin: UAE',
        details:
            'Palestinian olive oil 1 liter / Palestinian green olives 1 kilo / Palestinian thyme 500 grams / Ghazaleen tea 500 grams / Shelal cheese 250 grams / Majdouleh cheese 250 grams / Syrian Makdous 500 grams / Sage 100 grams / Dried tomatoes 250 grams / Labneh Jarashiya 500 grams / Plain Siniora 500 grams',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 350));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Jordan Honey Offer',
        wight: 'Weight: 115',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-32f8e079-48d9-485c-8b0b-280f5054e542.jpg',
        price: 360,
        origin: 'Origin: UAE',
        details: '1KG Sider Honey / 470g Citrus Honey / 470g Mountain honey',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 450));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'MooneHouse Package',
        wight: 'Weight: 250',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-34e1ca4c-237b-423a-9038-ddb94578186b.jpg',
        price: 330,
        origin: 'Origin: UAE',
        details:
            ' 5L Palestinian olive oil / 1KG Palestinian green olives / 500g Syrian makdous / 500g Palestinian thyme / 1KG Nabulsi cheese / 100g sage / 60g sumac baladis',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 413));
    _FreeDelivery.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Olive Oil Offer',
        wight: 'Weight: 32',
        image:
            'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-e7e37e0c-782b-4b0f-8141-2063f86369e0.jpg',
        price: 1125,
        origin: 'Origin: UAE',
        details: 'Palestinian Olive Oil / Jenin',
        brand: 'Brand: MooneHouse',
        isDeal: true,
        oldPrice: 1150));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.all(AppSize.padding10),
      child: Column(children: [
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(AppSize.padding10),
              child: Row(
                children: [
                  _topBarItem(
                      Icons.shopping_cart_checkout_outlined, "Bundles", 0),
                  _topBarItem(
                      Icons.shopping_cart_checkout_outlined, "Above 50%", 1),
                  _topBarItem(
                      Icons.shopping_cart_checkout_outlined, "Below 50%", 2),
                  _topBarItem(Icons.timelapse_outlined, "Buy One Get One", 3),
                  _topBarItem(Icons.fire_truck_outlined, "Free Delivery", 4),
                ],
              )),
        ),
        Expanded(
          flex: 3,
          child: GridView(
            padding: EdgeInsets.all(AppSize.padding10),
            //scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.52,
                crossAxisSpacing: AppSize.padding10,
                mainAxisSpacing: AppSize.padding10,
                crossAxisCount: 2),
            children:
                dealTap == 0 ? _gridList(_bundles)
                    : dealTap == 1? _gridList(_Below50)
                    :  dealTap == 2? _gridList(_Above50)
                    : dealTap == 3? _gridList(_BuyOneGetOne)
                    : _gridList(_FreeDelivery)

          ),
        ),
      ]),
    ));
  }

  _text(text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  _topBarItem(icon, label, num) {
    return GestureDetector(
      onTap: () => setState(() {
        dealTap = num;
      }),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppSize.padding10),
          padding: EdgeInsets.all(AppSize.padding10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.mainColor),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.curve))),
          height: 100,
          width: 100,
          child: Column(
            children: [
              Icon(icon,
                  size: 30,
                  color: dealTap == num ? AppColor.mainColor : AppColor.black),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                    fontSize: 15,
                    color:
                        dealTap == num ? AppColor.mainColor : AppColor.black),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }

  _gridList(List<ItemContainerModule> list) {
    return list.map((e) => DealsCont(item: e)).toList();
  }
}
