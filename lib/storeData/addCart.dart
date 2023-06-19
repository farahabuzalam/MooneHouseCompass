import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/storeData/cartItemModule.dart';

class AddCart{
  CartItem cartItem;

  AddCart(this.cartItem);

  add() async {


    Box box = await Hive.openBox(AppStrings.cartBox);

    box.add(this.cartItem);


    //GlobalVariables.cartList.add(CartListModule(item: this.cartItem.item));

    // p = box.getAt(0);

    print(this.cartItem);


    /* Update */
    // p.name = 'Omar';
    //p.save();

    //print(box.getAt(0))
  }

}