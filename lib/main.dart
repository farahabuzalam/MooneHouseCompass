import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/homeScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:testproject/modules/cartListModule.dart';
import 'package:testproject/modules/itemContainerModule.dart';
import 'package:testproject/storeData/PersonModule.dart';
import 'package:testproject/storeData/cartItemModule.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


  var path = (await getApplicationDocumentsDirectory()).path;


  /* Hive Init */


 Hive
    ..init(path)
    ..registerAdapter(PersonAdapter());

  Box p = await Hive.openBox(AppStrings.personBox);

    if (p.length > 0) {
      print(p.getAt(0));
      GlobalVariables.person = p.getAt(p.length - 1);
    }


  /* Hive Init */
 Hive
    //..init(path)
    ..registerAdapter(CartItemAdapter());

  Box c = await Hive.openBox(AppStrings.cartBox);


  if (c.length > 0) {
    //print(c.getAt(0));
    for(CartItem i in c.values){
      GlobalVariables.cartList.add(CartListModule(
          item: ItemContainerModule(
              off: 'off',
              rating: i.rating,
              name: i.name,
              wight: i.wight,
              image: i.image,
              price: i.price ,
              isDeal: i.isDeal,
              oldPrice: i.oldPrice,
              count: i.count)));

    }
  }

  /* Hive Init
  if (!Hive.isBoxOpen(AppStrings.cartBox))
    Hive.init(path);

  if (!Hive.isAdapterRegistered(1))
    Hive.registerAdapter(CartAdapter());

  Box c = await Hive.openBox(AppStrings.cartBox);

  if (c.length > 0) {
    print(c.getAt(0));
    for(CartItem i in c.values)
      {
        GlobalVariables.cartList.add(CartListModule(
            item:
        ItemContainerModule(
            off: 'off',
            rating: i.rating,
            name: i.name,
            wight: i.wight,
            image: i.image,
            price: i.price,
            isDeal: i.isDeal,
            oldPrice: i.oldPrice
            )
        )
        ) ;
      }

  }*/

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        saveLocale: true,
        child: MyApp()
    ),
  );


}



class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      debugShowCheckedModeBanner: false,
      title: 'MooneHouse',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
