import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Select1 extends StatefulWidget {
  @override
  _Select1State createState() => _Select1State();
}

class _Select1State extends State<Select1> {
  List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int puan = 0;
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seçim Yap 1"),
         backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Aşağıda verilen etkinliklerden hangileri ‘sosyal yardımlaşma’ kavramıyla açıklanabilir? Bu cümleleri üzerine dokunarak seçebilirsiniz. (birden fazla seçim yapılabilir)",
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: ToggleButtons(
                    
                        children: <Widget>[
                          RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                 width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "* Engelli vatandaşlarımızın ihtiyaçlarının giderilmesi",
                                  textAlign: TextAlign.left,
                                ),
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "* Okulda satranç turnuvasının düzenlenmesi",
                                  textAlign: TextAlign.start
                                  
                                ),
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                 width: MediaQuery.of(context).size.width,
                                child: Text(
                                    "* İstanbul gezisinde müze ziyaretinin yapılması"),
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Ramazan Bayramı’nda huzurevi ziyaretlerinin yapılması")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Lösemili çocuklar için LÖSEV’e katkıda bulunulması")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Trabzon’daki sel felaketinde evsiz kalanlar için çadır toplanması")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                 width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "* Okulda müzik kulübünün kurulması",
                                ),
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Mehmetçiğe destek amaçlı Mehmetçik Vakfına bağış yapılması")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Belediye seçimlerinin büyük bir katılımla gerçekleşmesi")),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                  "* Bir grup öğrencinin okullarından topladıkları kitapları ihtiyaç sahipleri ile paylaşmaları")),
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
      puan += 10;
    }
    if (!isSelected[1]) {
      puan += 10;
    }

    if (!isSelected[2]) {
      puan += 10;
    }

    if (isSelected[3]) {
      puan += 10;
    }

    if (isSelected[4]) {
      puan += 10;
    }

    if (isSelected[5]) {
      puan += 10;
    }

    if (!isSelected[6]) {
      puan += 10;
    }

    if (isSelected[7]) {
      puan += 10;
    }

    if (!isSelected[8]) {
      puan += 10;
    }

    if (isSelected[9]) {
      puan += 10;
    }

    dataWrite
        .doc(userName)
        .collection("hafta3")
        .doc(userName)
        .set({"select1": puan}, SetOptions(merge: true));
    Navigator.pop(context);
  }
}
