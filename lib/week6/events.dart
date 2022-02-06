import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week6/tests.dart';
import 'package:sosyallesiyorum/week6/cls.dart';

class Week6 extends StatefulWidget {
  @override
  _Week6State createState() => _Week6State();
}

class _Week6State extends State<Week6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("6. Hafta"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Classs()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('1.Etkinlik'),
                subtitle: Text('Sınıflandırma'),
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
