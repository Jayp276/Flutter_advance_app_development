import 'package:flutter/material.dart';
import 'package:shop_app/Screens/Homescreen.dart';
import 'package:shop_app/Screens/Profilescreen.dart';
import 'package:shop_app/Screens/cartscreem.dart';
import 'package:shop_app/Screens/favoritescreen.dart';

class mybottompage extends StatefulWidget {
  String? username;
   mybottompage({super.key, required this.username});

  @override
  State<mybottompage> createState() => _mybottompageState();
}

class _mybottompageState extends State<mybottompage> {
  List dataList = [
    Myhomescreen(
      username: " ",
    ),
    mycartscreen(),
    myfavoritescreen(),
    Myprofilescreen()
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dataList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.shifting,
          fixedColor: Colors.orange,
          currentIndex: _selectedIndex,
          //backgroundColor: Colors.deepPurple,
          selectedIconTheme: IconThemeData(color: Colors.orange),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle:
              TextStyle(color: const Color.fromARGB(255, 98, 41, 41)),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ]),
    );
  }
}
