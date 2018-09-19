import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  bool answer;

  AnswerButton(this.answer);

  @override
  Widget build(BuildContext context){
    return new Expanded(//True button
      child: new Material(
        color: answer == true ? Colors.greenAccent : Colors.red,
        child: new InkWell(
          onTap: () =>print("You answered true"),
          child: new Center(
            child: new Container(
              child: new Text(answer == true ? "True" :"False"),
            ),
          ),
        ),
      )
    );
  }
}

