import 'package:testproject/modules/itemContainerModule.dart';

class SubCategoryModule {
  String image;
  String categoryName;
  List <ItemContainerModule>? list = [];

  SubCategoryModule({required this.categoryName,  this.list, required this.image});

}