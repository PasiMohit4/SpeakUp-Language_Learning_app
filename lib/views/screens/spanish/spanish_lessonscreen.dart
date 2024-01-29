import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson10.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson3.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson4.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson5.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson6.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson7.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson8.dart';
import 'package:speak_up/views/screens/spanish/spanish%20lesson/spanish_lesson9.dart';
import 'spanish lesson/spanish_lesson1.dart';
import 'spanish lesson/spanish_lesson2.dart';

class SpanishLessonScreen extends StatefulWidget {
  const SpanishLessonScreen({Key? key}) : super(key: key);

  @override
  State<SpanishLessonScreen> createState() => _SpanishLessonScreenState();
}

class _SpanishLessonScreenState extends State<SpanishLessonScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(

          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 70,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson1(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 1',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson2(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 2',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson3(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 3',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson4(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 4',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson5(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 5',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson6(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 6',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson7(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 7',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson8(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 8',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson9(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 9',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson10(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Lesson 10',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
