import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
