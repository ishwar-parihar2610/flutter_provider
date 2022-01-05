import 'package:flutter/cupertino.dart';
import 'package:provider_/provider/item.dart';

class AddItemNotifier extends ChangeNotifier {
  List<Item> itemList = [];

  addItem(String itemName) async {
    Item item = Item(itemName);
    itemList.add(item);
    notifyListeners();
  }
}
