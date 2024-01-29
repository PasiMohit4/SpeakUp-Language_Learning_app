class Lesson {

  final String id;
  final String english_title;
  final String language_title;

  Lesson({
    required this.id,
    required this.english_title,
    required this.language_title,

  });

  @override
  String toString() {
    return 'Lesson(id: $id, english_title: $english_title, language_title: $language_title)';
  }
}