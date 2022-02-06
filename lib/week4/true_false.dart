import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class TrueFalse extends StatefulWidget {
  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
  List<bool> isSelected1 = [false, false];
  List<bool> isSelected2 = [false, false];
  List<bool> isSelected3 = [false, false];
  List<bool> isSelected4 = [false, false];
  List<bool> isSelected5 = [false, false];
  List<bool> isSelected6 = [false, false];
  List<bool> isSelected7 = [false, false];
  List<bool> isSelected8 = [false, false];
  List<bool> isSelected9 = [false, false];
  List<bool> isSelected10 = [false, false];
  int puan = 0;
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doğru Yanlış"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Sevgili çocuklar aşağıdaki cümleler doğru ise doğruyu, yanlış ise yanlış kutucuğunu seçiniz. ",
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "1: Farklılıklara saygı gösterme demokrasiyi benimsemiş bireylerin temel özelliğidir"),
                        ),
                        Container(
                          height: 30,
                          child: ToggleButtons(
                            children: <Widget>[
                              Text("Doğru"),
                              Text("Yanlış"),
                            ],
                            onPressed: (int index) {
                              setState(() {
                                isSelected1 = [false, false];
                                isSelected1[index] = !isSelected1[index];
                              });
                            },
                            isSelected: isSelected1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "2: Farklılıklara gösterilen özen ve saygı toplumun uyum içinde yaşamasına katkı yapar"),
                        ),
                        Container(
                          height: 30,
                          child: ToggleButtons(
                            children: <Widget>[
                              Text("Doğru"),
                              Text("Yanlış"),
                            ],
                            onPressed: (int index) {
                              setState(() {
                                isSelected2 = [false, false];
                                isSelected2[index] = !isSelected2[index];
                              });
                            },
                            isSelected: isSelected2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "3: Kültürlerde karşılaştığımız farklılıklar ve çeşitlilikler toplum için bir tehdittir"),
                        ),
                        Container(
                          height: 30,
                          child: ToggleButtons(
                            children: <Widget>[
                              Text("Doğru"),
                              Text("Yanlış"),
                            ],
                            onPressed: (int index) {
                              setState(() {
                                isSelected3 = [false, false];
                                isSelected3[index] = !isSelected3[index];
                              });
                            },
                            isSelected: isSelected3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "4: Farklılıklara gösterilen saygı farklılıkların giderek bir sorun olmasına yol açar"),
                        ),
                        Container(
                          height: 30,
                          child: ToggleButtons(
                            children: <Widget>[
                              Text("Doğru"),
                              Text("Yanlış"),
                            ],
                            onPressed: (int index) {
                              setState(() {
                                isSelected4 = [false, false];
                                isSelected4[index] = !isSelected4[index];
                              });
                            },
                            isSelected: isSelected4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "5: Farklı kültürlerin bir arada yaşaması kendi kültürümüzün yok olmasına neden olur"),
                        ),
                        Container(
                          height: 30,
                          child: ToggleButtons(
                            children: <Widget>[
                              Text("Doğru"),
                              Text("Yanlış"),
                            ],
                            onPressed: (int index) {
                              setState(() {
                                isSelected5 = [false, false];
                                isSelected5[index] = !isSelected5[index];
                              });
                            },
                            isSelected: isSelected5,
                          ),
                        ),
                      ],
                    ),
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
    if (isSelected1[0]) {
      puan += 20;
    }
    if (isSelected2[0]) {
      puan += 20;
    }
    if (isSelected3[1]) {
      puan += 20;
    }
    if (isSelected4[1]) {
      puan += 20;
    }
    if (isSelected5[1]) {
      puan += 20;
    }

    dataWrite
        .doc(userName)
        .collection("hafta4")
        .doc(userName)
        .set({"true_false": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
