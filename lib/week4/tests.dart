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
          '1.	Ön yargı, insanların bir şey ya da bir kişi hakkında önceden hüküm vermesidir. Buna göre aşağıdaki cümlelerden hangisi ön yargı içermektedir?',
      'answers': [
        {
          'text':
              'a.	İnsanların görünüşlerine bakarak onları değerlendirmemeliyiz',
          'score': 0
        },
        {
          'text': 'b.	Her insanın olumlu ve olumsuz bazı özellikleri olabilir',
          'score': 0
        },
        {
          'text':
              'c.	Bir insanın iyi veya kötü olduğunu bakışından ve duruşundan anlayabiliriz',
          'score': 20
        },
        {
          'text':
              'd.	İnsanları ilk tanıdığımız anda onlar hakkında genel bir karar vermemeliyiz',
          'score': 0
        },
      ],
      'correct': 0,
    },
    {
      'question':
          '2.	Aşağıda konuşan kişilerden hangisi ‘ayrımcılığa’ uğramıştır?',
      'answers': [
        {
          'text': 'a.	Esra: Kadın olduğum için iş başvurum kabul edilmedi',
          'score': 20
        },
        {
          'text': 'b.	Selma: Boyum kısa olduğu için raftaki kitaba yetişemedim',
          'score': 0
        },
        {
          'text':
              'c.	Melis: Şehir dışında olduğum için bu hafta derslere katılamadım',
          'score': 0
        },
        {
          'text':
              'd.	Sevim: Param yetişmediği için beğendiğim ayakkabıyı alamadım',
          'score': 0
        },
      ],
      'correct': 0,
    },
    {
      'question':
          '3.	Beş parmağın beşi bir değildir. Bir eldeki parmakların kimisi uzun kimisi kısadır. Bunun gibi aynı anne babadan olmuş kardeşlerin de özellikleri farklı olabilir. Bu bilgi aşağıdakilerden hangisinin anlaşılmasını sağlar?',
      'answers': [
        {'text': 'a.	İnsanların özgür olduğunun', 'score': 0},
        {'text': 'b.	İnsanların farklı olabileceğinin', 'score': 20},
        {
          'text': 'c.	Her insanın diğeriyle aynı olmaz zorunda olduğunun',
          'score': 0
        },
        {
          'text': 'd.	Kardeşlerin aynı özellikte olması gerektiğinin',
          'score': 0
        },
      ],
      'correct': 0,
    },
    {
      'question':
          '4.	Aşağıdakilerden hangisi farklılıklara saygının önündeki engellerden biridir?',
      'answers': [
        {'text': 'a.	Hoşgörü', 'score': 0},
        {'text': 'b. Empati', 'score': 0},
        {'text': 'c.	Ön yargı', 'score': 20},
        {'text': 'd. Tecrübe', 'score': 0},
      ],
      'correct': 0,
    },
    {
      'question':
          '5.	Güney Afrika’da beyaz olmayanların seçme ve seçilme hakkı yoktur. Bu bilgi aşağıdaki kavramlardan hangisine girmektedir?',
      'answers': [
        {'text': 'a.	İnanç ayrımcılığı', 'score': 0},
        {'text': 'b.	Irk ayrımcılığı', 'score': 20},
        {'text': 'c.	Cinsiyet ayrımcılığı', 'score': 0},
        {'text': 'd.	Düşünce ayrımcılığı', 'score': 0},
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
      backgroundColor: Colors.red,),
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
        .collection("hafta4")
        .doc(userName)
        .set({"tests": widget.resultScore}, SetOptions(merge: true));

    Future.delayed(const Duration(milliseconds: 20), () {
      Navigator.pop(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(),);
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
