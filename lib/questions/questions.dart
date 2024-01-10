import 'package:quiz_with_4_answers/questions/quizModel.dart';

int index = 0;
bool? richtig;
String result = "";

List<Question> wquestions = [
  Question(
    texts: "240 + 120 ÷ 2 = ?",
    options: [
      Option(ansewers: "180", correct: false),
      Option(ansewers: "190", correct: false),
      Option(ansewers: "300", correct: true),
      Option(ansewers: "240", correct: false),
    ],
  ),
  Question(
    texts: "150 - 50 + 40 = ?",
    options: [
      Option(ansewers: "130", correct: false),
      Option(ansewers: "60", correct: true),
      Option(ansewers: "140", correct: false),
      Option(ansewers: "100", correct: false),
    ],
  ),
  Question(
    texts: "100 ÷ 2 - 50 = ?",
    options: [
      Option(ansewers: "20", correct: false),
      Option(ansewers: "50", correct: false),
      Option(ansewers: "0", correct: true),
      Option(ansewers: "1", correct: false),
    ],
  ),
  Question(
    texts: "3 + 3 ÷ 3 = ?",
    options: [
      Option(ansewers: "3", correct: true),
      Option(ansewers: "18", correct: false),
      Option(ansewers: "15", correct: false),
      Option(ansewers: "0", correct: false),
    ],
  ),
  Question(
    texts: "200 * 2 - 150 = ?",
    options: [
      Option(ansewers: "200", correct: false),
      Option(ansewers: "240", correct: false),
      Option(ansewers: "180", correct: false),
      Option(ansewers: "250", correct: true),
    ],
  ),
];
List<Question> wquestions1 = [
  Question(
    texts: "Англис тилинде канча тамга бар?",
    options: [
      Option(ansewers: "21", correct: false),
      Option(ansewers: "30", correct: false),
      Option(ansewers: "26", correct: true),
      Option(ansewers: "24", correct: false),
    ],
  ),
];

List<Question> wquestions2 = [
  Question(
    texts: "Немец тилинин грамматикасы кыйынбы?",
    options: [
      Option(ansewers: "Оа", correct: true),
      Option(ansewers: "Жок", correct: false),
    ],
  ),
  Question(
    texts: "Немец тили канча мамлекетте официалдуу тил?",
    options: [
      Option(ansewers: "1", correct: false),
      Option(ansewers: "3", correct: false),
      Option(ansewers: "4", correct: false),
      Option(ansewers: "5", correct: true),
    ],
  ),
  Question(
    texts: "Das Land созунун которулуш?",
    options: [
      Option(ansewers: "Апа", correct: false),
      Option(ansewers: "Чыны", correct: false),
      Option(ansewers: "Олко", correct: true),
      Option(ansewers: "Дос", correct: false),
    ],
  ),
];

List<Question> wquestions3 = [
  Question(
    texts: "Кыргыз тилинде канча алфавит бар?",
    options: [
      Option(ansewers: "31", correct: false),
      Option(ansewers: "30", correct: true),
      Option(ansewers: "27", correct: false),
      Option(ansewers: "29", correct: false),
    ],
  ),
  Question(
    texts: "Кыргыз тилине эн коп салым кошкон инсан?",
    options: [
      Option(ansewers: "К.Тыныстанов", correct: true),
      Option(ansewers: "Ж.Боконбаев", correct: false),
      Option(ansewers: "И.Раззаков", correct: false),
      Option(ansewers: "И.Арабаев", correct: false),
    ],
  ),
  Question(
    texts: "Кыргыз тили КР официалдуу тилби?",
    options: [
      Option(ansewers: "Жок", correct: true),
      Option(ansewers: "Оа", correct: false),
    ],
  ),
];

List<Question> wquestions4 = [
  Question(
    texts: "English = ?",
    options: [
      Option(ansewers: "180", correct: true),
      Option(ansewers: "190", correct: false),
      Option(ansewers: "300", correct: false),
      Option(ansewers: "240", correct: false),
    ],
  ),
  Question(
    texts: "3 + 3 ÷ 3 = ?",
    options: [
      Option(ansewers: "3", correct: true),
      Option(ansewers: "18", correct: false),
      Option(ansewers: "15", correct: false),
      Option(ansewers: "0", correct: false),
    ],
  ),
  Question(
    texts: "200 * 2 - 150 = ?",
    options: [
      Option(ansewers: "200", correct: false),
      Option(ansewers: "240", correct: false),
      Option(ansewers: "180", correct: false),
      Option(ansewers: "250", correct: true),
    ],
  ),
];
