// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz_with_4_answers/item/category.dart';
import 'package:quiz_with_4_answers/item/home.dart';
import 'package:quiz_with_4_answers/questions/questions.dart';
import 'package:quiz_with_4_answers/widget/widgets.dart';

TextStyle colorsBlack = TextStyle(
  color: Colors.white,
  fontFamily: "Cormorant",
  fontSize: 18,
);
TextStyle colorsWhite = TextStyle(
  color: Colors.white,
  fontFamily: "Cormorant",
  fontSize: 14,
);
TextStyle asd = TextStyle(
  color: Colors.black,
  fontFamily: "Cormorant",
  fontSize: 18,
);

class Math extends StatefulWidget {
  Math({super.key, required this.num});
  int num;
  @override
  State<Math> createState() => _MathState(num: num);
}

List<Icon> icons = [];
int index = 0;
bool incorrect = false;
int correctAntwort = 0;

class _MathState extends State<Math> {
  _MathState({required this.num});
  int num;

  cancel() {
    setState(() {
      if (index >= wquestions.length - 1) {
        index = 0;
        incorrect = true;
        icons = [];
      } else {
        index++;
      }
    });
  }

  cancel1() {
    setState(() {
      if (index >= wquestions1.length - 1) {
        index = 0;
        incorrect = true;
        icons = [];
      } else {
        index++;
      }
    });
  }

  cancel2() {
    setState(() {
      if (index >= wquestions2.length - 1) {
        index = 0;
        incorrect = true;
        icons = [];
      } else {
        index++;
      }
    });
  }

  cancel3() {
    setState(() {
      if (index >= wquestions3.length - 1) {
        index = 0;
        incorrect = true;
        icons = [];
      } else {
        index++;
      }
    });
  }

  cancel4() {
    setState(() {
      if (index >= wquestions4.length - 1) {
        index = 0;
        incorrect = true;
        icons = [];
      } else {
        index++;
      }
    });
  }

  Widget kairaBashtoo() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/smile.png",
            width: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            num == 0
                ? "Бардык суроолордун саны: ${wquestions.length}"
                : (num == 1
                    ? "Бардык суроолордун саны: ${wquestions1.length}"
                    : (num == 2
                        ? "Бардык суроолордун саны: ${wquestions2.length}"
                        : (num == 3
                            ? "Бардык суроолордун саны: ${wquestions3.length}"
                            : (num == 4
                                ? "Бардык суроолордун саны: ${wquestions4.length}"
                                : "")))),
            style: colorsBlack,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Туура жооптордун саны: $correctAntwort",
            style: colorsBlack,
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 0;
                num = 0;
                incorrect = false;
                correctAntwort = 0;
                icons = [];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => home(
                      nameUser: '',
                    ),
                  ),
                );
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Color(0xfffFAEF5D),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Кайра баштоо",
                style: asd,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff072541),
      appBar: PreferredSize(
        preferredSize: Size(0, 0),
        child: AppBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: ListView(
          children: [
            Column(
              children: incorrect == false
                  ? [
                      Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xfff142850),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => home(
                                          nameUser: "",
                                        ),
                                      ),
                                    );
                                    index = 0;
                                    incorrect = false;
                                    icons = [];
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Text(
                                "${categorys_kg[num]}",
                                style: colorsBlack,
                              ),
                              Text(
                                "Откоруу",
                                style: colorsWhite,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 1,
                        thickness: 5,
                        color: Colors.red,
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            num == 0
                                ? "$index/${wquestions.length}"
                                : (num == 1
                                    ? "$index/${wquestions1.length}"
                                    : (num == 2
                                        ? "$index/${wquestions2.length}"
                                        : (num == 3
                                            ? "$index/${wquestions3.length}"
                                            : (num == 4
                                                ? "$index/${wquestions4.length}"
                                                : "")))),
                            style: colorsBlack,
                          )),
                      sizedBox50(),
                      Container(
                        height: 100,
                        child: ListView(
                          children: [
                            Center(
                              child: Text(
                                num == 0
                                    ? "${wquestions[index].texts}"
                                    : (num == 1
                                        ? "${wquestions1[index].texts}"
                                        : (num == 2
                                            ? "${wquestions2[index].texts}"
                                            : (num == 3
                                                ? "${wquestions3[index].texts}"
                                                : (num == 4
                                                    ? "${wquestions4[index].texts}"
                                                    : "")))),
                                style: colorsBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.44,
                        child: Column(
                            children: num == 0
                                ? wquestions[index]
                                    .options
                                    .map(
                                      (option) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            print(wquestions.length);
                                            if (option.correct == true) {
                                              icons.add(
                                                Icon(
                                                  Icons.check,
                                                  size: 40,
                                                  color: Colors.green,
                                                ),
                                              );
                                              correctAntwort++;
                                            } else {
                                              icons.add(Icon(
                                                Icons.close,
                                                size: 40,
                                                color: Colors.red,
                                              ));
                                            }
                                            cancel();
                                            print(index);
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          height: 60,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xfffFF9800),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            "${option.ansewers}",
                                            style: colorsBlack,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList()
                                : num == 1
                                    ? wquestions1[index]
                                        .options
                                        .map(
                                          (option) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                print(wquestions1.length);
                                                if (option.correct == true) {
                                                  icons.add(
                                                    Icon(
                                                      Icons.check,
                                                      size: 40,
                                                      color: Colors.green,
                                                    ),
                                                  );
                                                  correctAntwort++;
                                                } else {
                                                  icons.add(Icon(
                                                    Icons.close,
                                                    size: 40,
                                                    color: Colors.red,
                                                  ));
                                                }
                                                cancel1();
                                                print(index);
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              height: 60,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Color(0xfffFF9800),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                "${option.ansewers}",
                                                style: colorsBlack,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList()
                                    : num == 2
                                        ? wquestions2[index]
                                            .options
                                            .map(
                                              (option) => InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    print(wquestions2.length);
                                                    if (option.correct ==
                                                        true) {
                                                      icons.add(
                                                        Icon(
                                                          Icons.check,
                                                          size: 40,
                                                          color: Colors.green,
                                                        ),
                                                      );
                                                      correctAntwort++;
                                                    } else {
                                                      icons.add(Icon(
                                                        Icons.close,
                                                        size: 40,
                                                        color: Colors.red,
                                                      ));
                                                    }
                                                    cancel2();
                                                    print(index);
                                                  });
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xfffFF9800),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    "${option.ansewers}",
                                                    style: colorsBlack,
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList()
                                        : (num == 3
                                            ? wquestions3[index]
                                                .options
                                                .map(
                                                  (option) => InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        print(
                                                            wquestions1.length);
                                                        if (option.correct ==
                                                            true) {
                                                          icons.add(
                                                            Icon(
                                                              Icons.check,
                                                              size: 40,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                          );
                                                          correctAntwort++;
                                                        } else {
                                                          icons.add(Icon(
                                                            Icons.close,
                                                            size: 40,
                                                            color: Colors.red,
                                                          ));
                                                        }
                                                        cancel3();
                                                        print(index);
                                                      });
                                                    },
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.all(10),
                                                      height: 60,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfffFF9800),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Text(
                                                        "${option.ansewers}",
                                                        style: colorsBlack,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList()
                                            : (num == 4
                                                ? wquestions4[index]
                                                    .options
                                                    .map(
                                                      (option) => InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            print(wquestions1
                                                                .length);
                                                            if (option
                                                                    .correct ==
                                                                true) {
                                                              icons.add(
                                                                Icon(
                                                                  Icons.check,
                                                                  size: 40,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              );
                                                              correctAntwort++;
                                                            } else {
                                                              icons.add(Icon(
                                                                Icons.close,
                                                                size: 40,
                                                                color:
                                                                    Colors.red,
                                                              ));
                                                            }
                                                            cancel4();
                                                            print(index);
                                                          });
                                                        },
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  10),
                                                          height: 60,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xfffFF9800),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Text(
                                                            "${option.ansewers}",
                                                            style: colorsBlack,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                    .toList()
                                                : []))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(children: icons),
                      )
                    ]
                  : [
                      kairaBashtoo(),
                    ],
            )
          ],
        ),
      ),
    );
  }
}
