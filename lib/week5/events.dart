import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week5/match.dart';
import 'package:sosyallesiyorum/week5/tests.dart';

class Week5 extends StatefulWidget {
  @override
  _Week5State createState() => _Week5State();
}

class _Week5State extends State<Week5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5. Hafta"),
           backgroundColor: Colors.green,
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
           Image.asset("assets/bal.jpg", fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
