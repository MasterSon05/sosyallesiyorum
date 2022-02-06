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
        backgroundColor: Colors.deepOrange,
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
                              "1: Doğuştan kazandığımız rollerimiz biyolojik özelliklerimizle ilgilidir."),
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
                              "2: Gruplar değişse de rollerimiz hiçbir zaman değişmez."),
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
                              "3: Aynı grup içinde tek bir rolümüz vardır."),
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
                          child:
                              Text("4: Bütün rollerimiz doğuştan kazanılır."),
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
                          child:
                              Text("5: Bazı rollerimiz hayat boyu devam eder."),
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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "6: Sınıf başkanlığı doğuştan kazanılan bir roldür."),
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
                                isSelected6 = [false, false];
                                isSelected6[index] = !isSelected6[index];
                              });
                            },
                            isSelected: isSelected6,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "7: Rollerimiz bize farklı sorumluluklar yükler."),
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
                                isSelected7 = [false, false];
                                isSelected7[index] = !isSelected7[index];
                              });
                            },
                            isSelected: isSelected7,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "8: Aynı anda farklı rollere sahip olabiliriz."),
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
                                isSelected8 = [false, false];
                                isSelected8[index] = !isSelected8[index];
                              });
                            },
                            isSelected: isSelected8,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "9: Çalışarak ailesini geçindirmek çocukların rolleri arasındadır."),
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
                                isSelected9 = [false, false];
                                isSelected9[index] = !isSelected9[index];
                              });
                            },
                            isSelected: isSelected9,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              "10: Sosyal rollerimiz toplumdaki değişimlerden etkilenmez."),
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
                                isSelected10 = [false, false];
                                isSelected10[index] = !isSelected10[index];
                              });
                            },
                            isSelected: isSelected10,
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
      puan += 10;
    }
    if (isSelected2[1]) {
      puan += 10;
    }
    if (isSelected3[1]) {
      puan += 10;
    }
    if (isSelected4[1]) {
      puan += 10;
    }
    if (isSelected5[0]) {
      puan += 10;
    }
    if (isSelected6[1]) {
      puan += 10;
    }
    if (isSelected7[0]) {
      puan += 10;
    }
    if (isSelected8[0]) {
      puan += 10;
    }
    if (isSelected9[1]) {
      puan += 10;
    }
    if (isSelected10[1]) {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta1")
        .doc(userName)
        .set({"true_false": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
