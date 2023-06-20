import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Person extends HiveObject {

  @HiveField(0)
  late String name;

  @HiveField(1)
  late double price;

  @HiveField(2)
  late int count;

  @HiveField(3)
  late double totalPrice;

  @HiveField(4)
  late String rating;

  @HiveField(5)
  late String wight;

  @HiveField(6)
  late String image;

  @HiveField(7)
  late bool isDeal;

  @HiveField(8)
  late double oldPrice;
}

class PersonAdapter extends TypeAdapter<Person>{
  @override
  Person read(BinaryReader reader) {
    // TODO: implement read
    return Person();
    throw UnimplementedError();
  }

  @override
  // TODO: implement typeId
  int typeId = 0;

  @override
  void write(BinaryWriter writer, Person obj) {
    // TODO: implement write
  }
}
