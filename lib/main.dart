import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }


}
class MyAppState extends State<MyApp>{
  var questionIndex = 0;



  void answerQuetion() {
    setState(() {
       questionIndex = questionIndex + 1;
      
    });
   
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText':'what\'s your favorite color',
        'answer':['black','blue','white','green']
      },
      {
        'questionText': 'what\'s your favorite animal',
        'answer':['snake','eliphant','camel','tiger']
      },
       {
        'questionText': 'who\'s your favorite celebrity',
        'answer':['messi','ronaldo','akshay','virat']
      }
      
     
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.menu,
            ),
          ],
          title: Text("my first app"),
        ),
        body: Column(
          children: [
            Questions(
              questions[questionIndex]['questionText'] as String,),
            Answer(answerQuetion),
            Answer(answerQuetion),
            Answer(answerQuetion),
            
          ],
        ),
      ),
    );
  }
}
