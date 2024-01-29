import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

import 'japanese lesson/japanese_lesson1.dart';
import 'japanese lesson/japanese_lesson10.dart';
import 'japanese lesson/japanese_lesson2.dart';
import 'japanese lesson/japanese_lesson3.dart';
import 'japanese lesson/japanese_lesson4.dart';
import 'japanese lesson/japanese_lesson5.dart';
import 'japanese lesson/japanese_lesson6.dart';
import 'japanese lesson/japanese_lesson7.dart';
import 'japanese lesson/japanese_lesson8.dart';
import 'japanese lesson/japanese_lesson9.dart';

class JapaneseLessonScreen extends StatefulWidget {
  const JapaneseLessonScreen({Key? key}) : super(key: key);

  @override
  State<JapaneseLessonScreen> createState() => _JapaneseLessonScreenState();
}

class _JapaneseLessonScreenState extends State<JapaneseLessonScreen> {
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson1(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson2(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson3(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson4(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson5(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson6(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson7(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson8(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson9(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseLesson10(),
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
