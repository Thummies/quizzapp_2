import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: '1 + 12 = 13', a: true),
    Question(q: 'น้ำเงิน+เขียว = ส้ม', a: false),
    Question(q: '1 + 1 = 11', a: false),
    Question(q: '2+2=4-1=3', a: false),
    Question(q: 'A B C เป็นอักษรภาษาอังกฤษ', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber <= _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber > _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;

  }

}