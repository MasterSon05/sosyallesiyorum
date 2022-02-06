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
  TextEditingController c6 = TextEditingController();
  TextEditingController c7 = TextEditingController();
  TextEditingController c8 = TextEditingController();
  TextEditingController c9 = TextEditingController();
  TextEditingController c10 = TextEditingController();

  int puan = 0;

  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eşleştirme"),
         backgroundColor: Colors.yellow,
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
                    Text("a. Türk Dil Kurumu"),
                    Text("b. Din"),
                    Text("c. Sanat"),
                    Text("ç. Kültür"),
                    Text("d. Tarih"),
                    Text("e. Mimari"),
                    Text("f. Gelenek-Görenek"),
                    Text("g. Yunus Emre"),
                    Text("h. Milli"),
                    Text("ı. Kültürel Öge"),
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
                            "1.Bir toplumu diğer toplumlardan farklı kılan, geçmişten beri değişerek devam eden, kendine özgü kimlik tarzına verilen isimdir."),
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
                        child: Text(
                            "2.Din, dil, tarih, gelenek-görenek, mimari vb ögelerin genel adıdır."),
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
                            "3.Türk dilinin geliştirilmesi için Atatürk’ün öncülüğünde oluşturulan kurumdur."),
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
                            "4.Bireylere yaşadıkları toplumun geçmişini öğreten kültürel ögedir."),
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
                            "5.Düğünler, kına geceleri ve asker uğurlama törenlerini kapsayan kültürel ögemizdir. "),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            "6.Ramazan ve Kurban Bayramı kutlamalarımızı kapsayan kültürel ögedir."),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c6,
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
                            "7.Kültürümüzde dini hayat ve ahlak anlayışı gibi alanlarda önemli katkılar sağlamış alimdir."),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c7,
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
                            "8.Kültürün önemli unsurlarındandır, bir milletin estetik anlayışını yansıtan ögedir."),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c8,
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
                            "9.Kültürün o toplumun değerlerinden oluşmasını ifade eden kavramdır."),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c9,
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
                            "10.Şehirler ve evler oluşturulurken dikkate alınan kültürel ögedir."),
                      ),
                      SizedBox(
                          width: 50,
                          child: TextField(
                            controller: c10,
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
    if (c1.text == "ç") {
      puan += 10;
    }
    if (c2.text == "ı") {
      puan += 10;
    }
    if (c3.text == "a") {
      puan += 10;
    }
    if (c4.text == "d") {
      puan += 10;
    }
    if (c5.text == "f") {
      puan += 10;
    }
    if (c6.text == "b") {
      puan += 10;
    }
    if (c7.text == "g") {
      puan += 10;
    }
    if (c8.text == "c") {
      puan += 10;
    }
    if (c9.text == "h") {
      puan += 10;
    }
    if (c10.text == "e") {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta2")
        .doc(userName)
        .set({"match": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
