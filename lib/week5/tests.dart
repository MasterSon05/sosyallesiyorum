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
          '1.	Yardımlaşma ve dayanışma toplum içinde birlik ve beraberliğe katkı sağlar. Bu durum aşağıdaki davranışlardan hangisini geliştirir?',
      'answers': [
        {'text': 'a.	Rekabet etme', 'score': 0},
        {'text': 'b.	Cesur olma', 'score': 0},
        {'text': 'c.	Güç birliği oluşturma', 'score': 20},
        {'text': 'd.	Planlı olma', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          '2.	Yardımlaşırken aşağıdaki davranışlardan hangisinden kaçınmamız gerekir?',
      'answers': [
        {'text': 'a.	Paylaşımcı olma', 'score': 0},
        {'text': 'b.	Birlikteliği sağlama', 'score': 0},
        {'text': 'c.	İyi niyetli olma', 'score': 0},
        {'text': 'd.	Küçümseyici davranma', 'score': 20},
      ],
      'correct': 0,
    },
    {
      'question':
          '3.	–Dost kara günde belli olur. Bu atasözü ile verilmek istenen mesaj hangisidir?',
      'answers': [
        {'text': 'a.	Kendimize güvenmeliyiz', 'score': 0},
        {'text': 'b.	Dayanışma içinde olmalıyız', 'score': 20},
        {'text': 'c.	Haklarımızı aramalıyız', 'score': 0},
        {'text': 'd.	Sorunlardan kaçmalıyız', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          '4.	‘İmece’ özellikle kırsal yerlerde uygulanan bir çalışma yöntemidir. Buna göre imece aşağıdakilerden hangisinin karşılığıdır?',
      'answers': [
        {'text': 'a.	Yardımlaşma ve dayanışma', 'score': 20},
        {'text': 'b.	Yeteneklerini geliştirme', 'score': 0},
        {'text': 'c.	Sorunlarla iç içe yaşama', 'score': 0},
        {'text': 'd.	Hak ve özgürlüklere sahip olma', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          """5.	İzmir’de meydana gelen 6.6 büyüklüğündeki depremin ardından tüm vatandaşlar depremzedelere yardım ulaştırmaya çalıştı. Bu habere göre vatandaşlarımızın;
I.	Yardımseverlik
II.	Dayanışma
III.	Ayrımcılık
Özelliklerinden hangilerine sahip olduğu söylenebilir?""",
      'answers': [
        {'text': 'a.	Yalnız I', 'score': 0},
        {'text': 'b. I ve II', 'score': 20},
        {'text': 'c. I ve III ', 'score': 0},
        {'text': 'd. I, II ve III', 'score': 0},
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
      appBar: AppBar(title: Text('Çoktan Seçmeli'),
      backgroundColor: Colors.green,),
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
        .collection("hafta5")
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
