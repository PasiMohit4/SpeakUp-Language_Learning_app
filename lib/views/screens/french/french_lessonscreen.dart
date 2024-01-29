import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

import 'french lesson/french_lesson1.dart';
import 'french lesson/french_lesson10.dart';
import 'french lesson/french_lesson2.dart';
import 'french lesson/french_lesson3.dart';
import 'french lesson/french_lesson4.dart';
import 'french lesson/french_lesson5.dart';
import 'french lesson/french_lesson6.dart';
import 'french lesson/french_lesson7.dart';
import 'french lesson/french_lesson8.dart';
import 'french lesson/french_lesson9.dart';

class FrenchLessonScreen extends StatefulWidget {
  const FrenchLessonScreen({Key? key}) : super(key: key);

  @override
  State<FrenchLessonScreen> createState() => _FrenchLessonScreenState();
}

class _FrenchLessonScreenState extends State<FrenchLessonScreen> {
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson1(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson2(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson3(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson4(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson5(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson6(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson7(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson8(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson9(),
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
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchLesson10(),
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
