import './question.dart';

class Quiz{
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  List<Question> get questions => _questions;
  int get lenth => _questions.length;
  int get questionNumber => _currentQuestionIndex +1;
  int get score => _score;

  Question get nextQuestion {
    _currentQuestionIndex ++;
    if(_currentQuestionIndex >= lenth) return null;
    return _questions[_currentQuestionIndex];
  }

  void answer(bool isCurrect){
    if(isCurrect) _score ++;
  }
}