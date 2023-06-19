import 'package:hive/hive.dart';
import 'package:testproject/modules/itemContainerModule.dart';

@HiveType(typeId: 1)
class CartItem extends HiveObject {

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

class CartAdapter extends TypeAdapter<CartItem>{
  @override
  CartItem read(BinaryReader reader) {
    // TODO: implement read
    return CartItem();
    throw UnimplementedError();
  }

  @override
  // TODO: implement typeId
  int typeId = 1;

  @override
  void write(BinaryWriter writer, CartItem obj) {
    // TODO: implement write
  }
}