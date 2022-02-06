import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();

  int puan = 0;

  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eşleştirme"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Aşağıdaki numaralar ile verilen ifadeleri harf ile verilen ifadelerle eşleştirerek boşluklara yazınız.",
              ),
              SizedBox(height: 15),
              Container(
                child: Wrap(
                  spacing: 50.0,
                  runSpacing: 8.0,
                  children: [
                    Text("a. AKUT"),
                    Text("b. LÖSEV"),
                    Text("c. TEV"),
                    Text("ç. KIZILAY"),
                    Text("d. MEHMETÇİK VAKFI"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            "1.Şehit ve gazi ailelerine destek veren vakıftır"),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c1,
                            maxLength: 1,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:
                            Text("2.Eğitim ile ilgili yardım sunan vakıftır"),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c2,
                            maxLength: 1,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            "3.Doğal afetlerde arama kurtarma çalışmaları yapan vakıftır"),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c3,
                            maxLength: 1,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            "4.Kan bağışı ve ihtiyaç sahiplerine yardım sunan vakıftır"),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c4,
                            maxLength: 1,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            "5.Lösemili çocukların sağlık ve eğitim vakfıdır"),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c5,
                            maxLength: 1,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                            ),
                          ))
                    ],
                  ),
                ],
              )),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: cevapKontrol,
                child: Text("Bitir"),
              )
            ],
          ),
        ),
      ),
    );
  }

  cevapKontrol() {
    if (c1.text == "d") {
      puan += 10;
    }
    if (c2.text == "c") {
      puan += 10;
    }
    if (c3.text == "a") {
      puan += 10;
    }
    if (c4.text == "ç") {
      puan += 10;
    }
    if (c5.text == "b") {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta5")
        .doc(userName)
        .set({"match": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
