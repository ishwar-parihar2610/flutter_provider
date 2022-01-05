import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_/provider/home_screen.dart';
import 'package:provider_/provider/itemAddNotifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  /
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>AddItemNotifier(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        
      ),
    );
  }
}
