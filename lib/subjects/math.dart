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
bool? incorrect;

class _MathState extends State<Math> {
  _MathState({required this.num});
  int num;

  cancel() {
    setState(() {
      if (index >= wquestions.length - 1) {
        index = 0;
        icons = [];
      }
      index++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 0),
        child: AppBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: ListView(
          children: [
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
                "12/20",
                style: asd,
              ),
            ),
            sizedBox50(),
            Container(
              height: 100,
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "${wquestions[index].texts}",
                      style: asd,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.44,
              child: Column(
                children: wquestions[index]
                    .options
                    .map(
                      (option) => InkWell(
                        onTap: () {
                          setState(() {
                            print(wquestions.length);
                            if (option.correct == true) {
                              icons.add(Icon(
                                Icons.check,
                                size: 40,
                                color: Colors.green,
                              ));
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
                            width: MediaQuery.of(context).size.width * 0.8,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xfffFF9800),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("${option.ansewers}")),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(children: icons),
            ),
          ],
        ),
      ),
    );
  }
}
