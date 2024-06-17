import 'package:flutter/material.dart';

class mycategories extends StatefulWidget {
  const mycategories({super.key});

  @override
  State<mycategories> createState() => _mycategoriesState();
}

class _mycategoriesState extends State<mycategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Categories",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
             // color: Color.fromRGBO(67, 68, 71, 1)
             ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 192, 118, 1),
                                        Color.fromRGBO(196, 113, 65, 1),
                                        Color.fromRGBO(156, 60, 30, 1),
                                      ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/tshirt.png",
                                    color: Colors.white,
                                    height: 35,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Clothes",
                            style: TextStyle(
                                color: Color.fromRGBO(172, 179, 191, 1)),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  color: Color.fromRGBO(24, 205, 202, 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/bottle.png",
                                    //color: Colors.white,
                                    height: 40,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("cosmetics",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  color: Color.fromRGBO(197, 9, 32, 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/shoe.png",
                                    //color: Colors.white,
                                    height: 35,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("shoes",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 118, 118, 1),
                                        Color.fromRGBO(255, 174, 78, 1)
                                      ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/electronics.png",
                                    //color: Colors.white,
                                    height: 35,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Electronics",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(230, 177, 92, 1),
                                        Color.fromRGBO(255, 248, 78, 1)
                                      ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    size: 36,
                                    color: Color.fromRGBO(40, 5, 177, 1),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Home",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(119, 165, 248, 1),
                                        Color.fromRGBO(213, 163, 255, 1)
                                      ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/furniture.png",
                                    //color: Colors.white,
                                    height: 35,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Furniture",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(119, 165, 248, 1),
                                        Color.fromRGBO(213, 163, 255, 1)
                                      ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/stationary.png",
                                    //color: Colors.white,
                                    height: 35,
                                    width: 34,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("stationary",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1))),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Men's Clothing",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 335.3,
                          width: 232.98,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(
                                width: 0.2,
                                color: Color.fromRGBO(196, 196, 196, 1)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: -1,
                                  color: Color.fromRGBO(0, 0, 0, 0.25))
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "T-shirts",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shirts",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hoods",
                                      style: TextStyle(
                                        color: Colors.black,
                                          //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jeans",
                                      style: TextStyle(
                                        color: Colors.black,
                                          //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jackets",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Underweras",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "women's Clothing",
                              style: TextStyle(
                                  color: Color.fromRGBO(172, 179, 191, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 335,
                          width: 232.98,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                           color: Colors.white,
                            border: Border.all(
                                width: 0.2,
                                color: Color.fromRGBO(196, 196, 196, 1)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: -1,
                                  color: Color.fromRGBO(0, 0, 0, 0.25))
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Blouse",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shirts",
                                      style: TextStyle(
                                        color: Colors.black,
                                       // color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Office wears",
                                      style: TextStyle(
                                        color: Colors.black,
                                       // color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jeans",
                                      style: TextStyle(
                                        color: Colors.black,
                                       // color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jackets",
                                      style: TextStyle(
                                        color: Colors.black,
                                       // color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 10, right: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Underwears",
                                      style: TextStyle(
                                        color: Colors.black,

                                        //color: Color.fromRGBO(179, 179, 179, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1)),
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
