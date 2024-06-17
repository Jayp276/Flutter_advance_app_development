import 'package:flutter/material.dart';

class mycartscreen extends StatefulWidget {
  const mycartscreen({super.key});

  @override
  State<mycartscreen> createState() => _mycartscreenState();
}

class _mycartscreenState extends State<mycartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true, 
        backgroundColor: Colors.blue,
      ),
    );
  }
}