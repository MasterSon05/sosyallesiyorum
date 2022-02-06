import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Classs extends StatefulWidget {
  @override
  _ClasssState createState() => _ClasssState();
}

class _ClasssState extends State<Classs> {
  List<bool> isSelected1 = [false, false, false];
  List<bool> isSelected2 = [false, false, false];
  List<bool> isSelected3 = [false, false, false];
  List<bool> isSelected4 = [false, false, false];
  List<bool> isSelected5 = [false, false, false];
  List<bool> isSelected6 = [false, false, false];
  List<bool> isSelected7 = [false, false, false];
  List<bool> isSelected8 = [false, false, false];
  List<bool> isSelected9 = [false, false, false];
  List<bool> isSelected10 = [false, false, false];
  int puan = 0;
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sınıflandırma"),
         backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aşağıda verilen ifadelerin hangi kavrama ait olduğunu kutucaklara tıklayarak seçiniz",
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1: Toplu taşıma araçlarına binmek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected1 = [false, false, false];
                            isSelected1[index] = !isSelected1[index];
                          });
                        },
                        isSelected: isSelected1,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("2: Komşuları rahatsız etmemek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected2 = [false, false, false];
                            isSelected2[index] = !isSelected2[index];
                          });
                        },
                        isSelected: isSelected2,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("3: İstediğim düşünceyi benimsemek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected3 = [false, false, false];
                            isSelected3[index] = !isSelected3[index];
                          });
                        },
                        isSelected: isSelected3,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("4: Bir işte çalışmak"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected4 = [false, false, false];
                            isSelected4[index] = !isSelected4[index];
                          });
                        },
                        isSelected: isSelected4,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("5: Bir ürünü alırken markasını seçmek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected5 = [false, false, false];
                            isSelected5[index] = !isSelected5[index];
                          });
                        },
                        isSelected: isSelected5,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("6: Temiz bir çevrede yaşamak"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected6 = [false, false, false];
                            isSelected6[index] = !isSelected6[index];
                          });
                        },
                        isSelected: isSelected6,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("7: Ödevlerimi yapmak"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected7 = [false, false, false];
                            isSelected7[index] = !isSelected7[index];
                          });
                        },
                        isSelected: isSelected7,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("8: Derse zamanında girmek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected8 = [false, false, false];
                            isSelected8[index] = !isSelected8[index];
                          });
                        },
                        isSelected: isSelected8,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("9: İstediğimiz müziği dinlemek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected9 = [false, false, false];
                            isSelected9[index] = !isSelected9[index];
                          });
                        },
                        isSelected: isSelected9,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("10: Bozuk bir ürünü değiştirmek"),
                    Container(
                      height: 30,
                      child: ToggleButtons(
                        children: <Widget>[
                          Text("HAK        "),
                          Text("ÖZGÜRLÜK   "),
                          Text("SORUMLULUK "),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected10 = [false, false, false];
                            isSelected10[index] = !isSelected10[index];
                          });
                        },
                        isSelected: isSelected10,
                      ),
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
    if (isSelected2[2]) {
      puan += 10;
    }
    if (isSelected3[1]) {
      puan += 10;
    }
    if (isSelected4[0]) {
      puan += 10;
    }
    if (isSelected5[1]) {
      puan += 10;
    }
    if (isSelected6[0]) {
      puan += 10;
    }
    if (isSelected7[2]) {
      puan += 10;
    }
    if (isSelected8[2]) {
      puan += 10;
    }
    if (isSelected9[1]) {
      puan += 10;
    }
    if (isSelected10[0]) {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta6")
        .doc(userName)
        .set({"classs": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
