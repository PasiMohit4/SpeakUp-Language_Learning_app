import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class SpanishLessonWidget extends StatelessWidget {
  const SpanishLessonWidget(
      {Key? key,
        required this.lesson1,
        required this.lesson2,
        required this.indexAction,
        required this.totalLesson,
      })
      : super(key: key);

  final String lesson1;
  final String lesson2;
  final int indexAction;
  final int totalLesson;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          const SizedBox(height: 80.0,),
          const Text('English',
            textAlign: TextAlign.left,
          ),
          const Divider(color: neutral,endIndent: 10.0,indent: 10.0,),
          const SizedBox(height: 10.0,),
          Text(lesson1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 50.0,


            ),
          ),
          const SizedBox(height: 130.0,),
          const Text('Spanish',
            textAlign: TextAlign.left,
          ),
          const Divider(color: neutral,endIndent: 10.0,indent: 10.0,),
          const SizedBox(height: 10.0,),
          Text(lesson2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 50.0,

            ),
          ),
        ],
      ),
    );
  }
}