import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sosyallesiyorum/home_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

String userName;

class _StartPageState extends State<StartPage> {
  var userNameCont = TextEditingController();
  List<String> ogrList = [];
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sosyalleşenler", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),),
               SizedBox(
                  height:40,),
                SizedBox(
                  width: 200,
                  child: TextField(
                      controller: userNameCont,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Kullanıcı Adınız..",
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(child: Text("Giriş"), onPressed: firebaseControl)
              ]),
        ),
      ),
    );
  }

  Future firebaseControl() async {
    QuerySnapshot querySnapshot = await firestore.collection("users").get();
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i]["user_name"];
      print(a);
      ogrList.add(a);
    }
    print(ogrList.toString());

    if (ogrList.contains(userNameCont.text)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      userName = userNameCont.text;
    } else {
      return _showMyDialog();
    }
  }

  Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Hata Oluştu'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Kullanıcı Adınızı Kontrol Edin'),
            
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Tamam'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}
