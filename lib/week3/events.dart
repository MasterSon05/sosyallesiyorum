import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/week3/select1.dart';
import 'package:sosyallesiyorum/week3/select2.dart';

class Week3 extends StatefulWidget {
  @override
  _Week3State createState() => _Week3State();
}

class _Week3State extends State<Week3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3. Hafta"),
           backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Select1()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('1.Etkinlik'),
                subtitle: Text('Şeçim Yap 1'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Select2()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('2.Etkinlik'),
                subtitle: Text('Seçim Yap 2'),
              ),
            ),
          ),
           Image.asset("assets/bal.jpg", fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
