import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_/provider/add_item_screen.dart';
import 'package:provider_/provider/itemAddNotifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return AddItem();
                      },
                    ));
              },
              icon: Icon(Icons.add))
        ],
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Consumer<AddItemNotifier>(builder: (context, itemNotifier, _)
            
             {
               
              return Expanded(
                child: ListView.builder(
                  itemCount: itemNotifier.itemList.length,
                  itemBuilder: (context, index) 
              
                {
                  return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        itemNotifier.itemList[index].itemName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ));
                }),
              );
            })
          ],
        ),
      ),
    );
  }
}
