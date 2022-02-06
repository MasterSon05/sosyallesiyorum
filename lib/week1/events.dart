import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week1/gap_filling.dart';
import 'package:sosyallesiyorum/week1/true_false.dart';

class Week1 extends StatefulWidget {
  @override
  _Week1State createState() => _Week1State();
}

class _Week1State extends State<Week1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1. Hafta"),
           backgroundColor: Colors.deepOrange,
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
                MaterialPageRoute(builder: (context) => GapFilling()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('2.Etkinlik'),
                subtitle: Text('Boşluk Doldurma'),
              ),
            ),
          ),
          Image.asset("assets/bal.jpg", fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
