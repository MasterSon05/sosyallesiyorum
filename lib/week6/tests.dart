import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sosyallesiyorum/start_page.dart';

class Tests extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestsState();
  }
}

class _TestsState extends State<Tests> {
  // adding _ turns public class to private class
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'question':
          '1.	Aşağıdakilerden hangisi evdeki sorumluluklarımızdan değildir?',
      'answers': [
        {'text': 'a.	Odamızı toplamak', 'score': 0},
        {'text': 'b.	Oyuncaklarımızı düzenlemek', 'score': 0},
        {'text': 'c.	Kulüp çalışmasına katılmak', 'score': 20},
        {'text': 'd.	Ev işlerine yardımcı olmak', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          '2.	Bir kişinin başkalarının haklarını da dikkate alarak dilediğini yapabilmesine ……………………………. denir. Buna göre noktalı yere aşağıdakilerden hangisi gelmelidir?',
      'answers': [
        {'text': 'a.	Hak', 'score': 0},
        {'text': 'b.  Özgürlük', 'score': 20},
        {'text': 'c.	Sorumluluk', 'score': 0},
        {'text': 'd.	Dayanışma', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          '3.	Toplum içinde yaşamak için herkesin kurallara uyması gerekir. Aşağıdakilerden hangisi kurallara uyulmadığı takdirde oluşan durumlardan biri olamaz?',
      'answers': [
        {'text': 'a.	İnsanlar huzur içinde yaşarlar', 'score': 20},
        {'text': 'b.	Toplumda şiddet olayları artar', 'score': 0},
        {'text': 'c.	İnsanlar arası ilişkiler zorlaşır', 'score': 0},
        {'text': 'd.	Toplumun gelişmesi yavaşlar', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question': """4.	I. Üyesi olduğumuz grupta üstlendiğimiz rollerdir
II. Yasaların kişilere tanıdığı yetkilerdir
Yukarda verilen ifadelerin karşılığı hangi şıkta doğru olarak verilmiştir?""",
      'answers': [
        {'text': 'a.	Hak-Özgürlük', 'score': 0},
        {'text': 'b.	Sorumluluk-Hak', 'score': 20},
        {'text': 'c.	Özgürlük-Sorumluluk', 'score': 0},
        {'text': 'd.	Hak-Özgürlük', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          "5.	Bireyler herhangi bir kamu kuruluşundan istediği bir konu ile ilgili olarak bilgi edinme hakkına sahiptir. Bilgi edinme hakkı aşağıdakilerden hangisi ile başvuru yapılarak kullanılabilir?",
      'answers': [
        {'text': 'a.	Gazete ilanı', 'score': 0},
        {'text': 'b.	Dilekçe', 'score': 20},
        {'text': 'c.  Pasaport', 'score': 0},
        {'text': 'd.  Nüfus cüzdanı', 'score': 0},
      ],
      'correct': 0,
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _givenAnswer(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      // calls build on widget where you call setState (in this case MyApp)
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çoktan Seçmeli'),
        backgroundColor: Colors.indigo,
      ),
      body: _questionIndex < _questions.length
          ? Column(
              children: [
                Question(_questions[_questionIndex]['question']),
                ...(_questions[_questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(
                      () => _givenAnswer(answer['score']), answer['text']);
                }).toList(),
              ],
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}

class Result extends StatefulWidget {
  final Function resetHandler;
  final int resultScore;

  Result(this.resultScore, this.resetHandler);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  CollectionReference dataWrite =
      FirebaseFirestore.instance.collection('users');

  @override
  void initState() {
    dataWrite
        .doc(userName)
        .collection("hafta6")
        .doc(userName)
        .set({"tests": widget.resultScore}, SetOptions(merge: true));

    Future.delayed(const Duration(milliseconds: 20), () {
      Navigator.pop(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class Question extends StatelessWidget {
  final String
      questionText; // final = value doesn't change after constructor has been initialised

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // .infinity equivalent to 100% on CSS
      margin: EdgeInsets.all(10),
      child: Text(
        // Text widgets only take as much space as they need by default, so need to wrap
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final Function selectHandler; // final = constant value at run time.
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.amber,
      ),
    );
  }
}
