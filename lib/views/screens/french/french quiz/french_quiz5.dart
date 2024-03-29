import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/models/db_quiz_connect.dart';
import 'package:speak_up/models/question_model.dart';
import 'package:speak_up/views/widgets/option_card.dart';
import 'package:speak_up/views/widgets/question_widget.dart';
import 'package:speak_up/views/widgets/quiz_next_button.dart';
import 'package:speak_up/views/widgets/result_box.dart';

class FrenchQuiz5 extends StatefulWidget {
  const FrenchQuiz5({Key? key}) : super(key: key);

  @override
  State<FrenchQuiz5> createState() => _FrenchQuiz5State();
}

class _FrenchQuiz5State extends State<FrenchQuiz5> {
  var db = DBQuizConnect();

  late Future _questions;

  Future<List<Question>> getData() async {
    return db.fetchFrenchQuiz5();
  }

  @override
  void initState() {
    _questions = getData();
    super.initState();
  }

  // create an index to loop through _questions
  int index = 0;
  // create a score variable
  int score = 0;
  // create a boolean value to check if the user has clicked
  bool isPressed = false;
  // create a function to display the next question
  bool isAlreadySelected = false;
  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      // this is the block where the questions end.
      showDialog(
          context: context,
          barrierDismissible:
          false, // this will disable the dissmis function on clicking outside of box
          builder: (ctx) => ResultBox(
            result: score, // total points the user got
            questionLength: questionLength, // out of how many questions
            onPressed: startOver,
          ));
    } else {
      if (isPressed) {
        setState(() {
          index++; // when the index will change to 1. rebuild the app.
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  // create a function for changing color
  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  // create a function to start over
  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // use the FutureBuilder Widget
    return FutureBuilder(
      future: _questions as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              // change the background
              backgroundColor: backgroundColor,
              appBar: AppBar(
                title: const Text('Quiz 1'),
                backgroundColor: backgroundColor,
                shadowColor: Colors.transparent,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Score: $score',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              body: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    // add the questionWIdget here
                    QuestionWidget(
                      indexAction: index, // currently at 0.
                      question: extractedData[index]
                          .title, // means the first question in the list.
                      totalQuestions:
                      extractedData.length, // total length of the list
                    ),
                    const Divider(color: neutral),
                    // add some space
                    const SizedBox(height: 25.0),
                    for (int i = 0;
                    i < extractedData[index].options.length;
                    i++)
                      GestureDetector(
                        onTap: () => checkAnswerAndUpdate(
                            extractedData[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          color: isPressed
                              ? extractedData[index]
                              .options
                              .values
                              .toList()[i] ==
                              true
                              ? correct
                              : incorrect
                              : neutral,
                        ),
                      ),
                  ],
                ),
              ),

              // use the floating action button
              floatingActionButton: GestureDetector(
                onTap: () => nextQuestion(extractedData.length),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: QuizNextButton(// the above function
                  ),
                ),
              ),
              floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20.0),
                Text(
                  textAlign : TextAlign.center,
                  'Please Wait while Questions are loading..',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          );
        }

        return const Center(
          child: Text('No Data'),
        );
      },
    );
  }
}
