import 'package:flutter/material.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/tabPages/deals/dealCount.dart';



class DealPageScreen extends StatefulWidget {
  const DealPageScreen({Key? key}) : super(key: key);

  @override
  State<DealPageScreen> createState() => _DealPageScreen();

}
class _DealPageScreen extends State<DealPageScreen> {
  List<ItemContainerModule> _bundles = [];
    List<ItemContainerModule> _freedelivery = [];
  List<ItemContainerModule> _deal3 = [];

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
        brand: 'Brand: Moonehouse'));
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
        brand: 'Brand: MooneHouse'));
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
        brand: 'Brand: MooneHouse'));

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
        origin: 'Origin: UAE'));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '2.7',
        name: 'Arabic Spices Offer',
        wight: 'Weight: 75',
        image:
        'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-5bd5982f-5bfb-4497-9e4f-9b27828b4f4c.jpg',
        price: 42,
        origin: 'Origin: UAE',
        details: 'Essential spices in everyday cooking',
        brand: 'Brand: MooneHouse'));
    _bundles.add(ItemContainerModule(
        off: 'off',
        rating: '4.2',
        name: 'Rice Offer',
        wight: 'Weight: 75',
        image:
        'https://www.moonehouse.com/MooneHouseApi/ImagesFolders/VendorOtherServicesImages/Image-1ee71984-1712-4d9c-9398-bf85c1e46b22.jpg',
        price: 72,
        origin: 'Origin: UAE',
        details: 'Multi-grain rice',
        brand: 'Brand: MooneHouse'));

    _freedelivery.add(ItemContainerModule(
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
    _freedelivery.add(ItemContainerModule(
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
    _freedelivery.add(ItemContainerModule(
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

    _deal3.add(ItemContainerModule(
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
    _deal3.add(ItemContainerModule(
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
    _deal3.add(ItemContainerModule(
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

  }



  Widget build(BuildContext context) {
    return Expanded(
        child:
               GridView(
                 padding: EdgeInsets.all(AppSize.padding10),
                      //scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        

                         childAspectRatio: 0.6,
                          crossAxisSpacing: AppSize.padding10,
                          mainAxisSpacing: AppSize.padding10,
                          crossAxisCount: 2
                      ),
                  children: _bundles.map((e) => DealCount(item:e)).toList()
                 ,

                  ),


    );
  }
  


_gridList(List<ItemContainerModule>list){
//  list.map((e) => DealClass(item: e,refresh: ()=> _setState(),)).toList();
}
_text(text) {
  return Text(
    text,
    style: TextStyle(fontSize: 20),
  );
}

}