import 'question.dart';

class QuizBrain{
  List<Question> questions = [
    Question(question:"তুমি কি একটা চুদির ভাই?", answer: true),
    Question(question: "তোমার মত ভাল ছেলে আর একটাও নয়াই?", answer:false),
    Question(question:"আমি জীবনেও কোন মেয়ের দিকে খারাপ চোখে তাকাই নাই",answer: false),
  ];

  String getQuestion (int qustionNumber){
    return questions[qustionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber){
    return questions[questionNumber].questionAns;
  }

}