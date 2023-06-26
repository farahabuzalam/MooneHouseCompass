import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/apiModules/getUnSearchProduct.dart';
import 'package:testproject/modules/itemContainerModule.dart';

class Api {

   Future<void>? getBestSeller() async {
    try{
      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('http://compassint.ddns.net:1124/MooneHouseApi/ReservationUser/GetUnReservSearch'));
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
              oldPrice: element.discount+element.price,
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
  var request = http.Request('POST', Uri.parse('http://compassint.ddns.net:1124/MooneHouseApi/ReservationUser/GetUnReservSearch'));
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
        oldPrice: element.discount + element.price,
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
       var request = http.Request('POST', Uri.parse('http://compassint.ddns.net:1124/MooneHouseApi/ReservationUser/GetUnReservSearch'));
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
             oldPrice: element.discount+element.price,
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