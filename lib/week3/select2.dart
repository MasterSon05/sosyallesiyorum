import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Select2 extends StatefulWidget {
  @override
  _Select2State createState() => _Select2State();
}

class _Select2State extends State<Select2> {
  List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
  ];

  int puan = 0;
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seçim Yap 2"),
         backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Aşağıda verilen atasözlerinden yardımlaşma ve dayanışma ile ilgili olanları işaretleyiniz. (birden fazla seçim yapılabilir)",
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: ToggleButtons(
                        children: <Widget>[
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("Komşu komşunun külüne muhtaçtır")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("Birlikten kuvvet doğar")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("Üzüm üzüme baka baka kararır")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "Elden gelen öğün olmaz, o da vaktinde bulunmaz")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("Yalnız taştan duvar olmaz")),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected[index] = !isSelected[index];
                          });
                        },
                        isSelected: isSelected,
                      ),
                    )
                  ],
                ),
              ),
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
    if (isSelected[0]) {
      puan += 20;
    }
    if (isSelected[1]) {
      puan += 20;
    }

    if (!isSelected[2]) {
      puan += 20;
    }

    if (!isSelected[3]) {
      puan += 20;
    }

    if (isSelected[4]) {
      puan += 20;
    }

    dataWrite
        .doc(userName)
        .collection("hafta3")
        .doc(userName)
        .set({"select2": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
