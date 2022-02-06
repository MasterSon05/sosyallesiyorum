import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Drag extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');

  bool v1 = true;
  bool v2 = true;
  bool v3 = true;
  bool v4 = true;
  bool v5 = true;
  bool v6 = true;
  bool v7 = true;
  bool v8 = true;
  bool v9 = true;
  bool v10 = true;
  int puan = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Sürükle Bırak"),
         backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                "Aşağıda verilen kavramları ‘’toplumsal uyumu sağlayanlar’’ ve ‘’toplumsal uyumu bozanlar’’ şeklinde düşünerek ilgili kutulara sürükleyiniz. "),
            SizedBox(width: 50, height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: v1,
                      child: Draggable(
                        data: 1,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Adalet",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Adalet",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 50, height: 20),
                    Visibility(
                      visible: v2,
                      child: Draggable(
                        data: 2,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Sevgi",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Sevgi",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50, height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: v3,
                      child: Draggable(
                        data: 3,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Özgürlük",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Özgürlük",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 50, height: 20),
                    Visibility(
                      visible: v4,
                      child: Draggable(
                        data: 4,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Barış",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Barış",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50, height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: v5,
                      child: Draggable(
                        data: 5,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Nefret",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Nefret",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 50, height: 20),
                    Visibility(
                      visible: v6,
                      child: Draggable(
                        data: 6,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Dışlanmak",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Dışlanmak",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50, height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: v7,
                      child: Draggable(
                        data: 7,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "İş birliği",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "İş birliği",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 50, height: 20),
                    Visibility(
                      visible: v8,
                      child: Draggable(
                        data: 8,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Önyargı",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Önyargı",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50, height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: v9,
                      child: Draggable(
                        data: 9,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Suçlamak",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Suçlamak",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 50, height: 20),
                    Visibility(
                      visible: v10,
                      child: Draggable(
                        data: 10,
                        child: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Ayrımcılık",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        feedback: Container(
                          width: 150.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Ayrımcılık",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ),
                          color: Colors.pink,
                        ),
                        childWhenDragging: Container(
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50, height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 100.0,
                  color: Colors.green,
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      return Center(
                          child: Text(
                        "Toplumsal Uyumu Sağlayanlar",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data == 1) {
                        setState(() {
                          v1 = false;
                          puan += 10;
                        });
                      }
                      if (data == 2) {
                        setState(() {
                          puan += 10;
                          v2 = false;
                        });
                      }
                      if (data == 3) {
                        setState(() {
                          puan += 10;
                          v3 = false;
                        });
                      }
                      if (data == 4) {
                        setState(() {
                          puan += 10;
                          v4 = false;
                        });
                      }
                      if (data == 7) {
                        setState(() {
                          puan += 10;
                          v7 = false;
                        });
                      }

                      if (data == 10) {
                        setState(() {
                          v10 = false;
                        });
                      }
                      if (data == 5) {
                        setState(() {
                          v5 = false;
                        });
                      }
                      if (data == 8) {
                        setState(() {
                          v8 = false;
                        });
                      }
                      if (data == 6) {
                        setState(() {
                          v6 = false;
                        });
                      }
                      if (data == 9) {
                        setState(() {
                          v9 = false;
                        });
                      }
                      dataWrite
                          .doc(userName)
                          .collection("hafta2")
                          .doc(userName)
                          .set({"drag": puan}, SetOptions(merge: true));
                    },
                  ),
                ),
                Container(
                  width: 150.0,
                  height: 100.0,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      return Center(
                          child: Text(
                        "Toplumsal Uyumu Bozanlar",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data == 1) {
                        setState(() {
                          v1 = false;
                        });
                      }
                      if (data == 2) {
                        setState(() {
                          v2 = false;
                        });
                      }
                      if (data == 3) {
                        setState(() {
                          v3 = false;
                        });
                      }
                      if (data == 4) {
                        setState(() {
                          v4 = false;
                        });
                      }
                      if (data == 7) {
                        setState(() {
                          v7 = false;
                        });
                      }

                      if (data == 10) {
                        setState(() {
                          v10 = false;
                          puan += 10;
                        });
                      }
                      if (data == 5) {
                        setState(() {
                          v5 = false;
                          puan += 10;
                        });
                      }
                      if (data == 8) {
                        setState(() {
                          v8 = false;
                          puan += 10;
                        });
                      }
                      if (data == 6) {
                        setState(() {
                          v6 = false;
                          puan += 10;
                        });
                      }
                      if (data == 9) {
                        setState(() {
                          v9 = false;
                          puan += 10;
                        });
                      }
                      dataWrite
                          .doc(userName)
                          .collection("hafta2")
                          .doc(userName)
                          .set({"drag": puan}, SetOptions(merge: true));
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
