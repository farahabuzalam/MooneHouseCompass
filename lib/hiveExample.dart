import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testproject/PersonModel.dart';


class HiveExampleUi extends StatefulWidget {
  @override
  _HiveExampleUiState createState() => _HiveExampleUiState();
}

class _HiveExampleUiState extends State<HiveExampleUi> {

  Box? _personBox;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Hive.registerAdapter(PersonModelAdapter());
    _openBox();
  }

  Future _openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _personBox = await Hive.openBox('personBox');
    _personBox!.add(personModel);
    return;
  }

  PersonModel personModel = PersonModel(
      Random().nextInt(100),
          "Vivek",
      DateTime.now()
  );




  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive example"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              TextButton(
                child: Text("Add item "),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Delete item "),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Update item "),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }



}