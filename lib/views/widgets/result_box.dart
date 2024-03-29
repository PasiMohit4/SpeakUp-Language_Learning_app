import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  final int result;
  final int questionLength;
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
            CircleAvatar(
              radius: 60.0,
              backgroundColor: result == questionLength / 2
              ? Colors.yellow
              : result < questionLength /2
              ? incorrect
              : correct,
              child: Text(
                '$result/$questionLength',
                style: const TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
             Text(
               result == questionLength /2
               ? 'Almost There'
               : result < questionLength /2
               ? 'Try Again!'
               : 'Great!',

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
