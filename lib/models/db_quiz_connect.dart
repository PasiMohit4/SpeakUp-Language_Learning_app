import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:speak_up/models/question_model.dart';

class DBQuizConnect {

  //quiz1 connection
  final spanishquiz1 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz1.json');

  //quiz2 connection
  final spanishquiz2 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz2.json');

  //quiz3 connection
  final spanishquiz3 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz3.json');

  //quiz4 connection
  final spanishquiz4 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz4.json');

  //quiz5 connection
  final spanishquiz5 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz5.json');



  //quiz1 connection
  final frenchquiz1 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/french/quiz1.json');

  //quiz2 connection
  final frenchquiz2 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/french/quiz2.json');

  //quiz3 connection
  final frenchquiz3 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/french/quiz3.json');

  //quiz4 connection
  final frenchquiz4 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/french/quiz4.json');

  //quiz5 connection
  final frenchquiz5 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/french/quiz5.json');




  //quiz1 connjapanese
  final japanesequiz1 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/japanese/quiz1.json');

  //quiz2 connection
  final japanesequiz2 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/japanese/quiz2.json');

  //quiz3 connection
  final japanesequiz3 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/japanese/quiz3.json');

  //quiz4 connection
  final japanesequiz4 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/japanese/quiz4.json');

  //quiz5 connection
  final japanesequiz5 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/japanese/quiz5.json');


  //adding quiz1
  Future<void> addQuestion(Question question) async {
    http.post(spanishquiz1, body: json.encode({
      'title': question.title,
      'options': question.options,
    }));
  }

  //Spanish
  //fetching quiz1
  Future<List<Question>> fetchSpanishQuiz1() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(spanishquiz1).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }




  //fetching quiz2
  Future<List<Question>> fetchSpanishQuiz2() async {
    return http.get(spanishquiz2).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }


  //fetching quiz3
  Future<List<Question>> fetchSpanishQuiz3() async {
    return http.get(spanishquiz3).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz4
  Future<List<Question>> fetchSpanishQuiz4() async {
    return http.get(spanishquiz4).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz5
  Future<List<Question>> fetchSpanishQuiz5() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(spanishquiz5).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }





  //French
  //fetching quiz1
  Future<List<Question>> fetchFrenchQuiz1() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(frenchquiz1).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz2
  Future<List<Question>> fetchFrenchQuiz2() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(frenchquiz2).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz3
  Future<List<Question>> fetchFrenchQuiz3() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(frenchquiz3).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz4
  Future<List<Question>> fetchFrenchQuiz4() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(frenchquiz4).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz5
  Future<List<Question>> fetchFrenchQuiz5() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(frenchquiz5).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }




  //Japanese
  //fetching quiz1
  Future<List<Question>> fetchJapaneseQuiz1() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(japanesequiz1).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz2
  Future<List<Question>> fetchJapaneseQuiz2() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(japanesequiz2).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz3
  Future<List<Question>> fetchJapaneseQuiz3() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(japanesequiz3).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz4
  Future<List<Question>> fetchJapaneseQuiz4() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(japanesequiz4).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz5
  Future<List<Question>> fetchJapaneseQuiz5() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(japanesequiz5).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }



}
