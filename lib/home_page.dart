import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/puanlarim.dart';
import 'package:sosyallesiyorum/week1/events.dart';
import 'package:sosyallesiyorum/week2/events.dart';
import 'package:sosyallesiyorum/week3/events.dart';
import 'package:sosyallesiyorum/week4/events.dart';
import 'package:sosyallesiyorum/week5/events.dart';
import 'package:sosyallesiyorum/week6/events.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sosyalleşiyorum"),
     
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Puanlar()),
                );
              },
              child: Text("Puanlarım", style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.red, fontSize: 20.0),))
        ],
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week1()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('1.Hafta'),
                subtitle: Text('Toplumdaki Rollerim'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week2()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('2.Hafta'),
                subtitle: Text('Bizi Biz Yapanlar -- Ön Yargıları Kırıyorum'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week3()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('3.Hafta'),
                subtitle: Text('Sosyal Yardımlaşma ve Dayanışma'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week4()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('4.Hafta'),
                subtitle: Text('Ön Yargıları Kırıyorum'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week5()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('5.Hafta'),
                subtitle: Text('Sivil Toplum Kuruluşları'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Week6()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('6.Hafta'),
                subtitle: Text('Hak, Özgürlük ve Sorumluluk'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
