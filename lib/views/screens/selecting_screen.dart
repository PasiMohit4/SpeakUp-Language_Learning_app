import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/french/french_homescreen.dart';
import 'package:speak_up/views/screens/spanish/spanish_homescreen.dart';
import 'japanese/japanese_homescreen.dart';

class SelectingScreen extends StatefulWidget {
  const SelectingScreen({Key? key}) : super(key: key);

  @override
  _SelectingScreenState createState() => _SelectingScreenState();
}

class _SelectingScreenState extends State<SelectingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              textAlign: TextAlign.center,
              'Which language would you like to learn ? ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30,),
            // Example for Spanish language selection
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishHomeScreen(),),),
                child: const Center(
                  child: Text(
                    'Spanish',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0,),

            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FrenchHomeScreen(),),),
                child: const Center(
                  child: Text(
                    'French',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15.0,),

            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JapaneseHomeScreen(),),),
                child: const Center(
                  child: Text(
                    'Japanese',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            // Add similar code for other languages
          ],
        ),
      ),
    );
  }
}

