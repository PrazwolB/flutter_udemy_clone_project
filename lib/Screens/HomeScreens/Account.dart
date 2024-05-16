import 'package:flutter_udemy_clone_project/Services/Constants.dart';
import 'package:flutter_udemy_clone_project/Services/PrefStorage.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  //Authentication authentication = Authentication();
  final PrefStorage prefStorage = PrefStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("Account"),
        backgroundColor: Colors.black,
      ),
      body: Column(

      ),
    );
  }
}
