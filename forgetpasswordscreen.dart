import 'package:flutter/material.dart';
import 'package:shop_app/Screens/loginscreen.dart';
import 'package:shop_app/Screens/register.dart';
import 'package:shop_app/Screens/verify.dart';

class myforgetpassword extends StatefulWidget {
  const myforgetpassword({super.key});

  @override
  State<myforgetpassword> createState() => _myforgetpasswordState();
}

class _myforgetpasswordState extends State<myforgetpassword> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _newpasswordController = TextEditingController();
  TextEditingController _repeatpasswordController = TextEditingController();

  var _password = " ";
  var _confirmPassword = " ";

  void submit() async {
    if (_password != _confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
          new SnackBar(content: new Text("Password is Not Match")));

          
    } else {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(new SnackBar(content: new Text("Password is matched")));
          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => verify(),
                        ));

                        
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/monkey.png",
                    height: 200,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: TextFormField(
                  onChanged: (value) {
                    _password = value;
                  },
                  maxLength: 8,
                  controller: _newpasswordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "New Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TextFormField(
                  controller: _repeatpasswordController,
                  maxLength: 8,
                  onChanged: (value) {
                    _confirmPassword = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Repeat Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    submit();
                    
                  },
                  child: Text("submit"))
            ]),
      ),
    );
  }
}
