import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class GapFilling extends StatefulWidget {
  @override
  _GapFillingState createState() => _GapFillingState();
}

class _GapFillingState extends State<GapFilling> {
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
        title: Text("Boşluk Doldurma"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Sevgili çocuklar aşağıdaki metinde rollerimizin zaman içindeki değişimini anlatan cümleler yer almakta. Bu cümlelerdeki boş bırakılan yerleri size verilen kelimelerle doldurunuz.",
              ),
              SizedBox(height: 15),
              Container(
                child: Wrap(
                  spacing: 50.0,
                  runSpacing: 8.0,
                  children: [
                    Text("*dede"),
                    Text("*müzik öğretmeni"),
                    Text("*kardeş"),
                    Text("*evlat"),
                    Text("*kaptan"),
                    Text("*kuzen"),
                    Text("*sınıf başkanı"),
                    Text("*baba"),
                    Text("*öğrenci"),
                    Text("*gitarist"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                  child: Wrap(
                children: [
                  Text(
                      "Merhaba ben Caner; \n3 yaşındayken ailemin en küçük üyesi bendim. Aile içinde bana "),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c1,
                      )),
                  Text(", "),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c2,
                      )),
                  Text(" ve "),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c3,
                      )),
                  Text(
                      "gibi roller verilmişti. En çok ablamla oynamayı seviyordum.\n12 yaşındayken 6.sınıfa gidiyordum. Okul futbol takımında"),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c4,
                      )),
                  Text(
                      ", aynı zamanda arkadaşlarımın da beni seçmesi sonucu sınıfta"),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c5,
                      )),
                  Text(
                    " yapıyorum.\n 18 yaşında üniversite sınavına girdim ve  müzik öğretmenliğini kazandım. Artık hem üniversitede",
                  ),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c6,
                      )),
                  Text(
                      " hem de lisedeki arkadaşlarımla kurduğum müzik grubunda"),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c7,
                      )),
                  Text(
                      "24 yaşında meslek hayatım başladı. İstanbul’da bir okulda"),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c8,
                      )),
                  Text(
                      " olarak görev yapıyorum. Önümüzdeki ay evlenmeyi düşünüyorum.\n40 yaşında müzik öğretmeni görevime devam ediyorum. Ve artık iki çocuk sahibi bir "),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c9,
                      )),
                  Text(
                      " Akşamları eve gittiğimde eşimle ve çocuklarımla vakit geçirmeyi çok seviyorum.\n65 yaşında artık öğretmenlik görevimden emekli oldum. Artık "),
                  SizedBox(
                      height: 21,
                      width: 150,
                      child: TextField(
                        controller: c10,
                      )),
                  Text(
                      "oldum ve torunlarımla vakit geçirmek beni çok mutlu ediyor."),
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
    if (c1.text == "kardeş" || c1.text == "evlat" || c1.text == "kuzen") {
      puan += 10;
    }
    if (c2.text == "kardeş" || c2.text == "evlat" || c2.text == "kuzen") {
      puan += 10;
    }
    if (c3.text == "kardeş" || c3.text == "evlat" || c3.text == "kuzen") {
      puan += 10;
    }
    if (c4.text == "kaptan") {
      puan += 10;
    }
    if (c5.text == "sınıf başkanı") {
      puan += 10;
    }
    if (c6.text == "öğrenci") {
      puan += 10;
    }
    if (c7.text == "gitarist") {
      puan += 10;
    }
    if (c8.text == "müzik öğretmeni") {
      puan += 10;
    }
    if (c9.text == "baba") {
      puan += 10;
    }
    if (c10.text == "dede") {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta1")
        .doc(userName)
        .set({"gap_filling": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
