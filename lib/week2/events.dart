import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week2/drag.dart';
import 'package:sosyallesiyorum/week2/match.dart';

class Week2 extends StatefulWidget {
  @override
  _Week2State createState() => _Week2State();
}

class _Week2State extends State<Week2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2. Hafta"),
           backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Match()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('1.Etkinlik'),
                subtitle: Text('Eşleştirme'),
              ),
            ),
          ),
              InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drag()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('2.Etkinlik'),
                subtitle: Text('Sürükle Bırak'),
              ),
            ),
          ),
           Image.asset("assets/bal.jpg", fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
