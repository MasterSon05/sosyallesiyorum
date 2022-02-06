import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week4/tests.dart';
import 'package:sosyallesiyorum/week4/true_false.dart';

class Week4 extends StatefulWidget {
  @override
  _Week4State createState() => _Week4State();
}

class _Week4State extends State<Week4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4. Hafta"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrueFalse()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('1.Etkinlik'),
                subtitle: Text('Doğru - Yanlış'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tests()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('2.Etkinlik'),
                subtitle: Text('Çoktan Seçmeli'),
              ),
            ),
          ),
          Image.asset(
            "assets/bal.jpg",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
