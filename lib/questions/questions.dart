import 'package:quiz_with_4_answers/questions/quizModel.dart';

int index = 0;
bool? richtig;
String result = "";

List<Question> wquestions = [
  Question(
    texts: "Кыргызстанда канча область бар?",
    options: [
      Option(ansewers: "4", correct: false),
      Option(ansewers: "1", correct: false),
      Option(ansewers: "10", correct: false),
      Option(ansewers: "7", correct: true),
    ],
  ),
  Question(
    texts: "Биринчи программист аял киши болгон?",
    options: [
      Option(ansewers: "Оа", correct: true),
      Option(ansewers: "Билбейм", correct: false),
      Option(ansewers: "Жок", correct: false),
      Option(ansewers: "Ойлонуп коройун", correct: false),
    ],
  ),
  Question(
    texts: "Биринчи дуйнолук согуш качан болгон?",
    options: [
      Option(ansewers: "1917", correct: false),
      Option(ansewers: "1916", correct: false),
      Option(ansewers: "1918", correct: true),
      Option(ansewers: "1920", correct: false),
    ],
  ),
  Question(
    texts: "Алыкул Осмонов канча жашында дуйнодон откон?",
    options: [
      Option(ansewers: "20", correct: false),
      Option(ansewers: "41", correct: false),
      Option(ansewers: "35", correct: true),
      Option(ansewers: "50", correct: false),
    ],
  ),
];
