import 'package:flutter/material.dart';

class myfavoritescreen extends StatefulWidget {
  const myfavoritescreen({super.key});

  @override
  State<myfavoritescreen> createState() => _myfavoritescreenState();
}

class _myfavoritescreenState extends State<myfavoritescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite"),
        centerTitle: true, 
        backgroundColor: Colors.blue,
      ),
    );
  }
}