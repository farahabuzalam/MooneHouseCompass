import 'package:flutter/material.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/tabPages/deals/dealCont.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({Key? key}) : super(key: key);

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {

  List<ItemContainerModule> _bundles = [];

  @override
  void initState() {

    _bundles.add(ItemContainerModule(
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

    _bundles.add(ItemContainerModule(
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

    _bundles.add(ItemContainerModule(
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

  }

  Widget build(BuildContext context) {
   return  Expanded(
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
        children: _bundles.map((e) => DealCont(item:e)).toList()
        ,

      ),


    );
  }
}
