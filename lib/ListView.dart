import 'package:flutter/material.dart';
import 'package:ui_design/FlowerData.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: FlowerData().items.length,
        itemBuilder: (ctx, position) {
          return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text("$position"),
                    ),
                    SizedBox(width: 10),
                    Text("${FlowerData().items[position]["name"]}"),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
