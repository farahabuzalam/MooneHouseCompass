import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Person extends HiveObject {

  @HiveField(0)
  late String name;

  @HiveField(1)
  late String email;

  @HiveField(2)
  late String phone;

  @HiveField(3)
  late String city;


}

class PersonAdapter extends TypeAdapter<Person>{
  @override
  Person read(BinaryReader reader) {
    // TODO: implement read
    return Person()
      ..name = reader.read()
      ..phone = reader.read()
      ..email = reader.read()
      ..city = reader.read()
    ;
    throw UnimplementedError();
  }

  @override
  // TODO: implement typeId
  int typeId = 0;

  @override
  void write(BinaryWriter writer, Person obj) {
    writer.write(obj.name);
    writer.write(obj.phone);
    writer.write(obj.email);
    writer.write(obj.city);
    // TODO: implement write
  }
}
