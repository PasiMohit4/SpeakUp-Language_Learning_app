import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class FrenchHomeScreen extends StatefulWidget {
  const FrenchHomeScreen({Key? key}) : super(key: key);

  @override
  State<FrenchHomeScreen> createState() => _FrenchHomeScreenState();
}

class _FrenchHomeScreenState extends State<FrenchHomeScreen> {
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
        body: french[pageIdx],


      ),
    );
  }
}
