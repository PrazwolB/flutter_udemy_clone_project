import 'package:flutter_udemy_clone_project/Services/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy_clone_project/Services/Constants.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("My Wishlist"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text('WishList',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
        ),
      ),
    );
  }
}
