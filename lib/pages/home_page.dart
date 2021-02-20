import 'package:flutter/material.dart';
import 'package:flutter_1/models/catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "harsh";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.Items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
