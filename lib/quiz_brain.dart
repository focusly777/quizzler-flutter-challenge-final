import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('유주는 이쁘다', true),
    Question('유주는 아이폰을 쓴다. ', true),
    Question('유주는 맥을 쓴다.', true),
    Question('유주는 코딩을 좋아한다.', true),
    Question('유주는 고등학교때 공부를 못했다.', true),
    Question('유주는 영화를 좋아한다.', true),
    Question('유주의 MBTI는 INFP이다.', false),
    Question('유주는 얼떨결에 스타트업을 시작했다.', true),
    Question('유주는 불확실한걸 좋아한다', false),
    Question('유주는 확실히 성공할것에만 도전한다.', true),
    Question('유주는 뭐든지 확실해야 한다', true),
    Question('유주는 무언가 확실하지 않은 사람들과의 갈등도 많이 있다.', true),
    Question('그러나 유주는 좋은 사람이다.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
