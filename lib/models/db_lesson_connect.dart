import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:speak_up/models/lesson_model.dart';

class DbLessonConnect {

  //spanish
  //lesson1 connection
  final spanishlesson1 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson1.json');
  //lesson2 connection
  final spanishlesson2 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson2.json');
  //lesson3 connection
  final spanishlesson3 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson3.json');
  //lesson4 connection
  final spanishlesson4 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson4.json');
  //lesson5 connection
  final spanishlesson5 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson5.json');
  //lesson6 connection
  final spanishlesson6 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson6.json');
  //lesson7 connection
  final spanishlesson7 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson7.json');
  //lesson8 connection
  final spanishlesson8 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson8.json');
  //lesson9 connection
  final spanishlesson9 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson9.json');
  //lesson10 connection
  final spanishlesson10 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/spanish/lesson10.json');


  //french
  //lesson1 connection
  final frenchlesson1 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson1.json');
  //lesson2 connection
  final frenchlesson2 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson2.json');
  //lesson3 connection
  final frenchlesson3 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson3.json');
  //lesson4 connection
  final frenchlesson4 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson4.json');
  //lesson5 connection
  final frenchlesson5 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson5.json');
  //lesson6 connection
  final frenchlesson6 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson6.json');
  //lesson7 connection
  final frenchlesson7 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson7.json');
  //lesson8 connection
  final frenchlesson8 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson8.json');
  //lesson9 connection
  final frenchlesson9 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson9.json');
  //lesson10 connection
  final frenchlesson10 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/french/lesson10.json');



  //japanese
  //lesson1 connection
  final japaneselesson1 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson1.json');
  //lesson2 connection
  final japaneselesson2 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson2.json');
  //lesson3 connection
  final japaneselesson3 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson3.json');
  //lesson4 connection
  final japaneselesson4 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson4.json');
  //lesson5 connection
  final japaneselesson5 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson5.json');
  //lesson6 connection
  final japaneselesson6 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson6.json');
  //lesson7 connection
  final japaneselesson7 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson7.json');
  //lesson8 connection
  final japaneselesson8 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson8.json');
  //lesson9 connection
  final japaneselesson9 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson9.json');
  //lesson10 connection
  final japaneselesson10 = Uri.parse('https://speak-up-b7ca3-default-rtdb.firebaseio.com/lesson/japanese/lesson10.json');


  //adding lesson1
  Future<void> addLesson(Lesson lesson) async {
    http.post(spanishlesson1, body: json.encode({
      'english_title': lesson.english_title,
      'language_title': lesson.language_title,
    }));
  }



  //fetching lesson1
  Future<List<Lesson>> fetchSpanishLesson1() async {
    return http.get(spanishlesson1).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
            id: key,
            english_title: value['english_title'],
            language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson2
  Future<List<Lesson>> fetchSpanishLesson2() async {
    return http.get(spanishlesson2).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson3
  Future<List<Lesson>> fetchSpanishLesson3() async {
    return http.get(spanishlesson3).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson4
  Future<List<Lesson>> fetchSpanishLesson4() async {
    return http.get(spanishlesson4).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson5
  Future<List<Lesson>> fetchSpanishLesson5() async {
    return http.get(spanishlesson5).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson6
  Future<List<Lesson>> fetchSpanishLesson6() async {
    return http.get(spanishlesson6).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson7
  Future<List<Lesson>> fetchSpanishLesson7() async {
    return http.get(spanishlesson7).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson8
  Future<List<Lesson>> fetchSpanishLesson8() async {
    return http.get(spanishlesson8).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson9
  Future<List<Lesson>> fetchSpanishLesson9() async {
    return http.get(spanishlesson9).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson10
  Future<List<Lesson>> fetchSpanishLesson10() async {
    return http.get(spanishlesson10).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['spanish_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }




  //french
  //fetching lesson1
    Future<List<Lesson>> fetchFrenchLesson1() async {
      return http.get(frenchlesson1).then((response) {
        var data = json.decode(response.body)as Map<String, dynamic>;
        List<Lesson> newLessons =[];
        data.forEach((key, value) {
          var newLesson = Lesson(
            id: key,
            english_title: value['english_title'],
            language_title: value['french_title'],
          );
          newLessons.add(newLesson);
        });
        return newLessons;
      });
    }

  //fetching lesson2
  Future<List<Lesson>> fetchFrenchLesson2() async {
    return http.get(frenchlesson2).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson3
  Future<List<Lesson>> fetchFrenchLesson3() async {
    return http.get(frenchlesson3).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson4
  Future<List<Lesson>> fetchFrenchLesson4() async {
    return http.get(frenchlesson4).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson5
  Future<List<Lesson>> fetchFrenchLesson5() async {
    return http.get(frenchlesson5).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson6
  Future<List<Lesson>> fetchFrenchLesson6() async {
    return http.get(frenchlesson6).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson7
  Future<List<Lesson>> fetchFrenchLesson7() async {
    return http.get(frenchlesson7).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson8
  Future<List<Lesson>> fetchFrenchLesson8() async {
    return http.get(frenchlesson8).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson9
  Future<List<Lesson>> fetchFrenchLesson9() async {
    return http.get(frenchlesson9).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson10
  Future<List<Lesson>> fetchFrenchLesson10() async {
    return http.get(frenchlesson10).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['french_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }



  //japanese
  //fetching lesson1
  Future<List<Lesson>> fetchJapaneseLesson1() async {
    return http.get(japaneselesson1).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson2
  Future<List<Lesson>> fetchJapaneseLesson2() async {
    return http.get(japaneselesson2).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson3
  Future<List<Lesson>> fetchJapaneseLesson3() async {
    return http.get(japaneselesson3).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson4
  Future<List<Lesson>> fetchJapaneseLesson4() async {
    return http.get(japaneselesson4).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson5
  Future<List<Lesson>> fetchJapaneseLesson5() async {
    return http.get(japaneselesson5).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }


  //fetching lesson6
  Future<List<Lesson>> fetchJapaneseLesson6() async {
    return http.get(japaneselesson6).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson7
  Future<List<Lesson>> fetchJapaneseLesson7() async {
    return http.get(japaneselesson7).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson8
  Future<List<Lesson>> fetchJapaneseLesson8() async {
    return http.get(japaneselesson8).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson9
  Future<List<Lesson>> fetchJapaneseLesson9() async {
    return http.get(japaneselesson9).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }

  //fetching lesson10
  Future<List<Lesson>> fetchJapaneseLesson10() async {
    return http.get(japaneselesson10).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Lesson> newLessons =[];
      data.forEach((key, value) {
        var newLesson = Lesson(
          id: key,
          english_title: value['english_title'],
          language_title: value['japanese_title'],
        );
        newLessons.add(newLesson);
      });
      return newLessons;
    });
  }
}