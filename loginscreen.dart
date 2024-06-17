import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:get/get.dart';
import 'package:shop_app/Screens/Homescreen.dart';
import 'package:shop_app/Screens/bottompage.dart';
import 'package:shop_app/Screens/forgetpasswordscreen.dart';
import 'package:shop_app/Screens/register.dart';
import 'package:shop_app/Screens/test.dart';

class myloginscreen extends StatefulWidget {
  
  myloginscreen({super.key,});

  @override
  State<myloginscreen> createState() => _myloginscreenState();
}

class _myloginscreenState extends State<myloginscreen> {
  bool passwordVisible = false;

  final formkey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Color btnbackgroundColor = Colors.grey.shade300;

  Color btnTextColor = Colors.black26;

  Color emailBorderColor = Colors.grey.shade300;

  //bool _sendUpdates = false;

  bool btnVisible = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login(String? email, String? password) async {
    UserCredential? userCredential = await _auth.signInWithEmailAndPassword(
        email: email!, password: password!);

    User? user = userCredential.user;

    if (user != null) {
      print("Login successfully");
      DocumentSnapshot student = await FirebaseFirestore.instance
          .collection("User Information")
          .doc(user.uid)
          .get();

      String? username = student["username"];
      print("welcome = $username");

      
    } else {
      print("INvalid email and password");
    }
  }

  @override
  Widget build(BuildContext context) {
    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);

      return value!.isEmpty || !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome Back",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "login to your account",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(172, 179, 191, 1),
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       InkWell(
              //         onTap: () {},
              //         child: Container(
              //           height: 50,
              //           width: 50,
              //           decoration: BoxDecoration(
              //               color: Color.fromRGBO(0, 0, 0, 0.2),
              //               borderRadius: BorderRadius.circular(6)),
              //           child: Image.asset("assets/images/google.png"),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       height: 2,
              //       width: 87,
              //       color: Color.fromRGBO(217, 217, 217, 1),
              //     ),
              //     Text(
              //       "Or login with",
              //       style: TextStyle(
              //           fontSize: 15,
              //           fontWeight: FontWeight.w300,
              //           color: Color.fromRGBO(33, 33, 36, 1)),
              //     ),
              //     Container(
              //       height: 2,
              //       width: 87,
              //       color: Color.fromRGBO(217, 217, 217, 1),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       InkWell(
              //         onTap: () {},
              //         child: Container(
              //           height: 52,
              //           width: 167,
              //           decoration: BoxDecoration(
              //               color: Colors.teal,
              //               borderRadius: BorderRadius.circular(6),
              //               border: Border.all(color: Colors.black)),
              //           child: Center(
              //               child: Text(
              //             "LOG IN",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 13,
              //                 fontWeight: FontWeight.w700),
              //           )),
              //         ),
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => myregisterscreen(),
              //               ));
              //         },
              //         child: Container(
              //           height: 52,
              //           width: 167,
              //           decoration: BoxDecoration(
              //               color: Colors.teal,
              //               borderRadius: BorderRadius.circular(6),
              //               border: Border.all(color: Colors.black)),
              //           child: Center(
              //               child: Text(
              //             "REGISTER",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 13,
              //                 fontWeight: FontWeight.w700),
              //           )),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage("assets/images/first.jpg"),
              ),
              SizedBox(
                height: 23,
              ),
              Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9@a-zA-Z.]"))
                      ],
                      autocorrect: false,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _emailController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.grey,
                              size: 18,
                            ),
                            onPressed: () {
                              _emailController.clear();
                            }),
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Enter an Email",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.black45),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        counterText: " ",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: emailBorderColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      validator: validateEmail,
                      onChanged: (value) {
                        setState(() {
                          if (validateEmail(value) == null) {
                            emailBorderColor = Color(0xFF91e63);
                          } else {
                            emailBorderColor = Colors.grey.shade300;
                          }
                        });
                      },
                    ),
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: passwordVisible,
                  autocorrect: false,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Enter a password",
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: emailBorderColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 7,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => myforgetpassword(),
                            ));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    login(_emailController.text.toString(),
                        _passwordController.text.toString());

                    _emailController.clear();
                    _passwordController.clear();

                    Get.snackbar("Welcome ", "Thank You !!!",
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.all(15));

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mybottompage(username: " ",),
                        ));
                  },
                  child: Container(
                    height: 52,
                    width: 343,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(3, 31, 37, 1)),
                    child: Center(
                        child: Text(
                      "LOG IN",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: 87,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  Text(
                    "Or Login with",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(33, 33, 36, 1)),
                  ),
                  Container(
                    height: 2,
                    width: 87,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apple,
                        size: 55,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 55,
                        color: Colors.blue,
                      ))
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Are You Not Login? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => myregisterscreen(
                              username: "",
                            ),
                          ));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Color.fromARGB(255, 225, 109, 37),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
