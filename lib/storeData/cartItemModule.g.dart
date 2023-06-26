// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItemModule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemAdapter extends TypeAdapter<CartItem> {
  @override
  final int typeId = 1;

  @override
  CartItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItem()
      ..name = fields[0] as String
      ..price = fields[1] as double
      ..count = fields[2] as int?
      ..totalPrice = fields[3] as double
      ..rating = fields[4] as String
      ..wight = fields[5] as String
      ..image = fields[6] as String
      ..isDeal = fields[7] as bool
      ..oldPrice = fields[8] as double;
  }

  @override
  void write(BinaryWriter writer, CartItem obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.totalPrice)
      ..writeByte(4)
      ..write(obj.rating)
      ..writeByte(5)
      ..write(obj.wight)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.isDeal)
      ..writeByte(8)
      ..write(obj.oldPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
