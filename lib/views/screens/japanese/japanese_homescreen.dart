import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class JapaneseHomeScreen extends StatefulWidget {
  const JapaneseHomeScreen({Key? key}) : super(key: key);

  @override
  State<JapaneseHomeScreen> createState() => _JapaneseHomeScreenState();
}

class _JapaneseHomeScreenState extends State<JapaneseHomeScreen> {
  int pageIdx =0;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor,
          onTap: (idx) => {
            setState(() {
              pageIdx = idx;
            })
          },

          type: BottomNavigationBarType.fixed,
          selectedItemColor: buttonColor,
          unselectedItemColor: Colors.white,
          currentIndex: pageIdx,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 30),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.quiz,size: 30),label: 'Quiz',),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 30),label: 'Profile',),

          ],
        ),
        body: japanese[pageIdx],


      ),
    );
  }
}
