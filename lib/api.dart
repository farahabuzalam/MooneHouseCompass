import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/apiModules/getUnSearchProduct.dart';
import 'package:testproject/modules/apiModules/getUnSearchProductDeals.dart';
import 'package:testproject/modules/itemContainerModule.dart';


class Api {

  //String ip = 'http://compassint.ddns.net:1124/MooneHouseApi';
  String ip = 'https://www.moonehouse.com/MooneHouseApi';

   Future<void>? getBestSeller() async {
    try{
      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('$ip/ReservationUser/GetUnReservSearch'));
      request.body = json.encode({
        "pageNumber": "0",
        "pageSize": "10",
        "isBestSeller": 1,
        "MoonehEssentials": false,
        "RecentlyAdded": "0",
        "orderByValueString": ""
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        //print(await response.stream.bytesToString());
        String res = await response.stream.bytesToString();
        var model = getUnSearchProductFromJson(res);

        GlobalVariables.bestSellerProducts.clear();
        model.result.data.forEach((element) {

          GlobalVariables.bestSellerProducts.add(ItemContainerModule(
              off: 'off',
              rating: "1",
              name: element.name,
              wight: "Weight: "+element.weight+" g",
              image: element.imgAttached,
              price: element.price+0.0,
              isDeal: false,
              details: "test details test",
              origin: "Origin: "+ element.origin ,
              brand: "Brand: " + element.brandName,
              oldPrice: element.discount+element.price+0.0,
              ));
        }) ;

      }
      else {
        print(response.reasonPhrase);
      }

    }


        catch(e){

      print(e);
        }
  }



   Future<void>? getEssentialProducts() async {
try{
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('$ip/ReservationUser/GetUnReservSearch'));
  request.body = json.encode({
    "pageNumber": "0",
    "pageSize": "2",
    "isBestSeller": false,
    "MoonehEssentials": true,
    "RecentlyAdded": "0",
    "orderByValueString": ""
  });
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    String res = await response.stream.bytesToString();
    var model = getUnSearchProductFromJson(res);

    GlobalVariables.essentialsProducts.clear();
    model.result.data.forEach((element) {
      GlobalVariables.essentialsProducts.add(ItemContainerModule(
        off: 'off',
        rating: "1",
        name: element.name,
        wight: "Weight: " + element.weight + " g",
        image: element.imgAttached,
        price: element.price + 0.0,
        isDeal: false,
        details: "test details test",
        origin: "Origin: " + element.origin,
        brand: "Brand: " + element.brandName,
        oldPrice: element.discount + element.price+0.0,
      ));
    });

  }

  else {
    print(response.reasonPhrase);
  }


}


    catch(e){
  print(e);
         }

   }

   Future<void>? getRecentlyAdded() async {

     try{
       var headers = {
         'Content-Type': 'application/json'
       };
       var request = http.Request('POST', Uri.parse('$ip/ReservationUser/GetUnReservSearch'));
       request.body = json.encode({
         "pageNumber": "0",
         "pageSize": "2",
         "isBestSeller": false,
         "MoonehEssentials": false,
         "RecentlyAdded": "1",
         "orderByValueString": ""
       });
       request.headers.addAll(headers);

       http.StreamedResponse response = await request.send();

       if (response.statusCode == 200) {

         String res = await response.stream.bytesToString();
         var model = getUnSearchProductFromJson(res);

         GlobalVariables.recentlyAddedProducts.clear();
         model.result.data.forEach((element) {

           GlobalVariables.recentlyAddedProducts.add(ItemContainerModule(
             off: 'off',
             rating: "1",
             name: element.name,
             wight: "Weight: "+element.weight+" g",
             image: element.imgAttached,
             price: element.price+0.0,
             isDeal: false,
             details: "test details test",
             origin: "Origin: "+ element.origin ,
             brand: "Brand: " + element.brandName,
             oldPrice: element.discount+element.price+0.0,
           ));
         }) ;

       }
       else {
         print(response.reasonPhrase);
       }
     }
     catch(e){
       print(e);
     }


   }

  Future<void>? getFreeDelivery() async{
     try{
       var headers = {
         'Content-Type': 'application/json'
       };
       var request = http.Request('POST', Uri.parse('$ip/ReservationUser/GetUnReservSearch'));
       request.body = json.encode({
         "pageNumber": "0",
         "pageSize": "10",
         "isBestSeller": null,
         "MoonehEssentials": null,
         "RecentlyAdded": null,
         "freeDelivery": 1,
         "BuyOneGetOne": null,
         "Bundel": null,
         "minDiscount": null,
         "maxDiscount": null,
         "orderByValueString": "Id"
       });
       request.headers.addAll(headers);

       http.StreamedResponse response = await request.send();

       if (response.statusCode == 200) {
        // print(await response.stream.bytesToString());
         String res = await response.stream.bytesToString();
         var model = getUnSearchProductFromJsonDeals(res);

         GlobalVariables.freeDeliveryProducts.clear();
         model.result.data.forEach((element) {

           GlobalVariables.freeDeliveryProducts.add(ItemContainerModule(
             off: 'off',
             rating: "1",
             name: element.name,
             wight: "Weight: "+element.weight+" g",
             image: element.imgAttached,
             price: element.price+0.0,
             isDeal: true,
             details: "test details test",
             origin: "Origin: "+ element.origin ,
             brand: "Brand: " + element.brandName,
             oldPrice: element.discount+element.price+0.0,
           ));
         }) ;


       }
       else {
         print(response.reasonPhrase);
       }
     }
         catch(e){
       print(e);
         }

  }

  Future<void>? getBuyOneGetOne() async{
     try{

       var headers = {
         'Content-Type': 'application/json'
       };
       var request = http.Request('POST', Uri.parse('https://www.moonehouse.com/MooneHouseApi/ReservationUser/GetUnReservSearch'));
       request.body = json.encode({
         "pageNumber": "0",
         "pageSize": "10",
         "isBestSeller": null,
         "MoonehEssentials": null,
         "RecentlyAdded": null,
         "freeDelivery": null,
         "BuyOneGetOne": 1,
         "Bundel": null,
         "minDiscount": null,
         "maxDiscount": null,
         "orderByValueString": "Id"
       });
       request.headers.addAll(headers);

       http.StreamedResponse response = await request.send();

       if (response.statusCode == 200) {
         //print(await response.stream.bytesToString());
         String res = await response.stream.bytesToString();
         var model = getUnSearchProductFromJsonDeals(res);

         GlobalVariables.buyOneGetOneProducts.clear();
         model.result.data.forEach((element) {

           GlobalVariables.buyOneGetOneProducts.add(ItemContainerModule(
             off: 'off',
             rating: "1",
             name: element.name,
             wight: "Weight: "+element.weight+" g",
             image: element.imgAttached,
             price: element.price+0.0,
             isDeal: true,
             details: "test details test",
             origin: "Origin: "+ element.origin ,
             brand: "Brand: " + element.brandName,
             oldPrice: element.discount+element.price+0.0,
           ));
         }) ;

       }
       else {
         print(response.reasonPhrase);
       }

     }
         catch(e){
       print(e);
         }
  }

  Future<void>? getAbove50() async{
    try{

      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('https://www.moonehouse.com/MooneHouseApi/ReservationUser/GetUnReservSearch'));
      request.body = json.encode({
        "pageNumber": "0",
        "pageSize": "10",
        "isBestSeller": null,
        "MoonehEssentials": null,
        "RecentlyAdded": null,
        "freeDelivery": null,
        "BuyOneGetOne": null,
        "Bundel": null,
        "minDiscount": 50,
        "maxDiscount": 99,
        "orderByValueString": "Id"
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        //print(await response.stream.bytesToString());
        String res = await response.stream.bytesToString();
        var model = getUnSearchProductFromJsonDeals(res);

        GlobalVariables.above50Products.clear();
        model.result.data.forEach((element) {

          GlobalVariables.above50Products.add(ItemContainerModule(
            off: 'off',
            rating: "1",
            name: element.name,
            wight: "Weight: "+element.weight+" g",
            image: element.imgAttached,
            price: element.price+0.0,
            isDeal: true,
            details: "test details test",
            origin: "Origin: "+ element.origin ,
            brand: "Brand: " + element.brandName,
            oldPrice: element.discount+element.price+0.0,
          ));
        }) ;

      }
      else {
        print(response.reasonPhrase);
      }

    }
    catch(e){
      print(e);
    }
  }

  Future<void>? getBelow50() async{
    try{

      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('https://www.moonehouse.com/MooneHouseApi/ReservationUser/GetUnReservSearch'));
      request.body = json.encode({
        "pageNumber": "0",
        "pageSize": "10",
        "isBestSeller": null,
        "MoonehEssentials": null,
        "RecentlyAdded": null,
        "freeDelivery": null,
        "BuyOneGetOne": null,
        "Bundel": null,
        "minDiscount": 1,
        "maxDiscount": 49,
        "orderByValueString": "Id"
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        //print(await response.stream.bytesToString());
        String res = await response.stream.bytesToString();
        var model = getUnSearchProductFromJsonDeals(res);

        GlobalVariables.below50Products.clear();
        model.result.data.forEach((element) {

          GlobalVariables.below50Products.add(ItemContainerModule(
            off: 'off',
            rating: "1",
            name: element.name,
            wight: "Weight: "+element.weight+" g",
            image: element.imgAttached,
            price: element.price+0.0,
            isDeal: true,
            details: "test details test",
            origin: "Origin: "+ element.origin ,
            brand: "Brand: " + element.brandName,
            oldPrice: element.discount+element.price+0.0,
          ));
        }) ;

      }
      else {
        print(response.reasonPhrase);
      }

    }
    catch(e){
      print(e);
    }
  }

  Future<void>? getBundles() async{
    try{

      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('https://www.moonehouse.com/MooneHouseApi/ReservationUser/GetUnReservSearch'));
      request.body = json.encode({
        "pageNumber": "0",
        "pageSize": "10",
        "isBestSeller": null,
        "MoonehEssentials": null,
        "RecentlyAdded": null,
        "freeDelivery": null,
        "BuyOneGetOne": null,
        "Bundel": 1,
        "minDiscount": null,
        "maxDiscount": null,
        "orderByValueString": "Id"
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        //print(await response.stream.bytesToString());
        String res = await response.stream.bytesToString();
        var model = getUnSearchProductFromJsonDeals(res);

        GlobalVariables.bundlesProducts.clear();
        model.result.data.forEach((element) {

          GlobalVariables.bundlesProducts.add(ItemContainerModule(
            off: 'off',
            rating: "1",
            name: element.name,
            wight: "Weight: "+element.weight+" g",
            image: element.imgAttached,
            price: element.price+0.0,
            isDeal: true,
            details: "test details test",
            origin: "Origin: "+ element.origin ,
            brand: "Brand: " + element.brandName,
            oldPrice: element.discount+element.price+0.0,
          ));
        }) ;

      }
      else {
        print(response.reasonPhrase);
      }

    }
    catch(e){
      print(e);
    }
  }



}