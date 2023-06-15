import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/person.dart';
import 'package:testproject/storeData/myBoxes.dart';

class AddPerson{
  Person person;
  AddPerson(this.person);

  add() async {
  MyBoxes p = MyBoxes()
   ..person = this.person
   ..cartList = GlobalVariables.cartList;

/*    var person = Person()
      ..name = this.person.name
      ..email = this.person.email;*/

    Box box = await Hive.openBox(AppStrings.personBox);
    box.add(p);
    var bbb = box.getAt(0);
    GlobalVariables.person = bbb.person;

   // p = box.getAt(0);

    print(p.person.name);

    /* Update */
    // p.name = 'Omar';
    //p.save();

    //print(box.getAt(0))
  }

}