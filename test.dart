import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class mytest extends StatefulWidget {
  String? username;
  String? email;
  String? address;
  String? number;
  
  mytest({super.key, required this.username, required this.email, required this.address, required this.number});

  @override
  State<mytest> createState() => _mytestState();
}

class _mytestState extends State<mytest> {

    FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.username}",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:StreamBuilder(
        stream: _firebaseFirestore.collection("User Information").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var mydata = snapshot.data!.docs;
            return ListView.builder(
              itemCount: mydata.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: ListTile(
                      title: Text(
                        "username : ${mydata[index]["username"]}",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("Email : ${mydata[index]["email"]}",
                          style: TextStyle(color: Colors.white)),
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           editscreen(docId: mydata[index].id),
                                //     ));
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                //deletedata(mydata[index].id);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      )),
                );
              },
            );
          } else if (snapshot.hasError) {}
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
