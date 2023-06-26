import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/cartListModule.dart';
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

  update() async{
    Box box = await Hive.openBox(AppStrings.cartBox);
    int index = 0;
    for(CartItem i in box.values)
      if(i.name == this.cartItem!.name) {
        index = i.key;
        break;
      }
    if(this.cartItem.count != null)
      {
        box.putAt(index!, this.cartItem);
        print(GlobalVariables.cartList.indexWhere((element) => element.item.name == this.cartItem!.name).toString());
        GlobalVariables.cartList[GlobalVariables.cartList.indexWhere((element) => element.item.name == this.cartItem!.name)].item.count = this.cartItem!.count;
      }

    else{
      box.deleteAt(index);
    }

    print(this.cartItem);

  }




}