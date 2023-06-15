import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/storeData/PersonModule.dart';

class AddPerson{
  Person person;
  AddPerson(this.person);
  add() async{
    var p = this.person;
    Box box = await Hive.openBox(AppStrings.personBox);
    box.add(p);
    GlobalVariables.person = box.getAt(0);

    //p = box.getAt(0);

    print(p.name);

    /* Update */
    //p.name = 'Omar';
    //p.save();

    //print(box.getAt(0)) //
  }
}