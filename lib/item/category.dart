import 'package:flutter/material.dart';
import 'package:quiz_with_4_answers/questions/questions.dart';
import 'package:quiz_with_4_answers/subjects/math.dart';

List<String> categorys_kg = ["Математика", "Англис тили", "Немец тили"];
List<String> alphabets = [
  "A",
  "Б",
  "С",
  "Д",
  "Е",
  "Ж",
  "З",
  "К",
];
List<Color> colorsClass = [
  Color(0xfff52057B),
  Color(0xfff61C0BF),
  Color(0xfffF67280),
  Color(0xfff576F72),
  Color(0xfffFFB6B9),
  Color(0xfffFFB6B9),
  Color(0xfffFFB6B9),
];

TextStyle colorsTexts = TextStyle(
  color: Color(0xfff141E61),
  fontSize: 16,
);
TextStyle colorsUnterTexts = TextStyle(
  color: Color(0xfff141E61),
  fontSize: 13,
);
// void initState(){
//   mathscreen = Math();
// }

class CategoryWidget extends StatefulWidget {
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: categorys_kg.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Math(
                            num: index,
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xfffF6EABE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${alphabets[index]}",
                                style: TextStyle(
                                  color: colorsClass[index],
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "класс",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${categorys_kg[index]}",
                              style: colorsTexts,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${wquestions.length} question",
                              style: colorsUnterTexts,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xfff141E61),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }),
        ));
  }
}
