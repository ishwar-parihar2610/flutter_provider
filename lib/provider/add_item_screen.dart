import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_/provider/itemAddNotifier.dart';

class AddItem extends StatelessWidget {
  TextEditingController _itemNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
                controller: _itemNameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Item Name",
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_itemNameController.text.isEmpty) {
                    return;
                  } else {
                    AddItemNotifier itemNotifier = AddItemNotifier();
                   await Provider.of<AddItemNotifier>(context,listen: false)
                        .addItem(_itemNameController.text);
                    Navigator.pop(context);
                  }
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
