import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

import 'japanese quiz/japanese_quiz1.dart';
import 'japanese quiz/japanese_quiz2.dart';
import 'japanese quiz/japanese_quiz3.dart';
import 'japanese quiz/japanese_quiz4.dart';
import 'japanese quiz/japanese_quiz5.dart';

class JapaneseQuizScreen extends StatefulWidget {
  const JapaneseQuizScreen({Key? key}) : super(key: key);

  @override
  State<JapaneseQuizScreen> createState() => _JapaneseQuizScreenState();
}

class _JapaneseQuizScreenState extends State<JapaneseQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
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
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseQuiz1(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 1',style: TextStyle(
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
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseQuiz2(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 2',style: TextStyle(
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
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseQuiz3(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 3',style: TextStyle(
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
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseQuiz4(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 4',style: TextStyle(
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
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseQuiz5(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 5',style: TextStyle(
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
    );
  }
}
