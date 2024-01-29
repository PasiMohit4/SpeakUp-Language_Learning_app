import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/models/db_lesson_connect.dart';
import 'package:speak_up/models/lesson_model.dart';
import 'package:speak_up/views/widgets/end_lesson_box.dart';
import 'package:speak_up/views/widgets/lesson_next_button.dart';
import 'package:speak_up/views/widgets/spanish_lesson_widget.dart';

class SpanishLesson3 extends StatefulWidget {
  const SpanishLesson3({Key? key}) : super(key: key);

  @override
  State<SpanishLesson3> createState() => _SpanishLesson3State();
}

class _SpanishLesson3State extends State<SpanishLesson3> {
  var db = DbLessonConnect();

  late Future _lesson;

  Future<List<Lesson>> getData() async {
    return db.fetchSpanishLesson3();
  }

  @override
  void initState() {
    _lesson = getData();
    super.initState();
  }

  int index = 0;

  void nextLesson(int lessonLength) {
    if (index == lessonLength - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => EndLessonBox(
            onPressed: startOver,
          ));
    } else {
      setState(() {
        index++;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
    });
    Navigator.pop(context);
  }




  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _lesson as Future<List<Lesson>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Lesson>;
            return Scaffold(
              appBar: AppBar(
                title: const Text('Lessons'),
                backgroundColor: backgroundColor,
                shadowColor: Colors.transparent,
              ),
              body: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SpanishLessonWidget(
                        lesson1: extractedData[index].english_title,
                        lesson2: extractedData[index].language_title,
                        indexAction: index,
                        totalLesson: extractedData.length)
                  ],
                ),
              ),
              floatingActionButton: GestureDetector(
                onTap: () => nextLesson(extractedData.length),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: LessonNextButton(),
                ),
              ),
              floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20.0,),
                Text('Please wait while Lesson are loading...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: neutral,
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                  ),
                )
              ],

            ),
          );
        }
        return const Center(child: Text('No Data'),);
      },
    );
  }
}
