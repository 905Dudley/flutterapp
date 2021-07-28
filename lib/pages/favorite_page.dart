import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key? key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
