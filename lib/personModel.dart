
import 'package:hive/hive.dart';



@HiveType(typeId: 1)
class PersonModel{
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  DateTime birthDate;
  PersonModel(this.id, this.name, this.birthDate);
}