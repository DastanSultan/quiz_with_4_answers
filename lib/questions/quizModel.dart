class Question {
  final String? texts;
  final List<Option> options;
  Question({this.texts, required this.options});
}

class Option {
  final String? ansewers;
  final bool? correct;
  Option({this.ansewers, this.correct});
}
