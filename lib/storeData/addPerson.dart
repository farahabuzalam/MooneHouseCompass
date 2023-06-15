import 'package:hive/hive.dart';
import 'package:testproject/constants/appStrings.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/modules/person.dart';

class AddPerson{
  Person person;
  AddPerson(this.person);

  add() async {


/*    var person = Person()
      ..name = this.person.name
      ..email = this.person.email;*/

    Box box = await Hive.openBox(AppStrings.personBox);

    GlobalVariables.person = this.person;

   // p = box.getAt(0);

    print(this.person.name);

    /* Update */
    // p.name = 'Omar';
    //p.save();

    //print(box.getAt(0))
  }

}