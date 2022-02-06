import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Puanlar extends StatefulWidget {
  @override
  _PuanlarState createState() => _PuanlarState();
}

class _PuanlarState extends State<Puanlar> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puanlarım"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: Column(
            children: [
              Text("1.Hafta (Toplumdaki Rollerim)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta1")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Doğru Yanlış: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("true_false")) {
                      return Text("Doğru - Yanlış: => " +
                          snapshot.data["true_false"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Doğru Yanlış: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta1")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Boşluk Doldurma: => Grilmedi");
                    } else if (snapshot.data
                        .data()
                        .containsKey("gap_filling")) {
                      return Text("Boşluk Doldurma: => " +
                          snapshot.data["gap_filling"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Boşluk Doldurma: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
          Card(
              child: Column(
            children: [
              Text("2.Hafta (Bizi Biz Yapanlar--Ön Yargıları Kırıyorum)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta2")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Eşleştirme: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("match")) {
                      return Text("Eşleştirme: => " +
                          snapshot.data["match"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Eşleştirme: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta2")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Sürükle Bırak: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("drag")) {
                      return Text("Sürükle Bırak: => " +
                          snapshot.data["drag"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Boşluk Doldurma: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
          Card(
              child: Column(
            children: [
              Text("3.Hafta (Sosyal Yardımlaşma ve Dayanışma)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta3")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Seçim Yap 1: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("select1")) {
                      return Text("Seçim Yap 1: => " +
                          snapshot.data["select1"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Seçim Yap 1: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta3")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Seçim Yap 2: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("select2")) {
                      return Text("Seçim Yap 2: => " +
                          snapshot.data["select2"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Seçim Yap 2: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
          Card(
              child: Column(
            children: [
              Text("4.Hafta (Ön Yargıları Kırıyorum)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta4")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Doğru Yanlış: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("true_false")) {
                      return Text("Doğru Yanlış: => " +
                          snapshot.data["true_false"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Doğru Yanlış: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta4")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("tests")) {
                      return Text("Çoktan Seçmeli: => " +
                          snapshot.data["tests"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
          Card(
              child: Column(
            children: [
              Text("5.Hafta (Sivil Toplum Kuruluşları)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta5")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Eşleştirme: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("match")) {
                      return Text("Eşleştirme: => " +
                          snapshot.data["match"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Eşleştirme: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta5")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("tests")) {
                      return Text("Çoktan Seçmeli: => " +
                          snapshot.data["tests"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
          Card(
              child: Column(
            children: [
              Text("6.Hafta (Hak, Özgürlük ve Sorumluluk)"),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta6")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Sınıflandırma: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("classs")) {
                      return Text("Sınıflandırma: => " +
                          snapshot.data["classs"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Sınıflandırma: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              FutureBuilder(
                future: haftaDYPuan()
                    .doc(userName)
                    .collection("hafta6")
                    .doc(userName)
                    .get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.data() == null) {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    } else if (snapshot.data.data().containsKey("tests")) {
                      return Text("Çoktan Seçmeli: => " +
                          snapshot.data["tests"].toString());
                    } else {
                      print(snapshot.data);
                      return Text("Çoktan Seçmeli: => Grilmedi");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          )),
        ],
      ),
    );
  }

  CollectionReference haftaDYPuan() {
    var gelenPuan = firestore.collection("users");

    return gelenPuan;
  }
}
