import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class EndLessonBox extends StatelessWidget {
  const EndLessonBox({
    Key? key,
    required this.onPressed,
  }) : super(key: key);


  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      content: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Result',
              style: TextStyle(fontSize: 22.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const CircleAvatar(
              radius: 100.0,
              backgroundColor: correct,
              child: Text(
                'Completed',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),

            GestureDetector(
              onTap: onPressed,
              child: const Text(
                textAlign: TextAlign.center,
                'Ok',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  letterSpacing: 1.0,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
