import 'package:flutter/material.dart';
import 'package:quiz_with_4_answers/item/category.dart';
import 'package:quiz_with_4_answers/item/start.dart';
import 'package:quiz_with_4_answers/widget/widgets.dart';

class home extends StatefulWidget {
  home({super.key, required this.nameUser});
  String nameUser;
  homeState createState() => homeState();
}

TextStyle colorsWhite = TextStyle(
  color: Colors.white,
  fontFamily: "Cormorant",
  fontSize: 18,
);
TextStyle colorsBlack = TextStyle(
  color: Colors.black,
  fontFamily: "Cormorant",
  fontSize: 20,
);
TextStyle colorsBlack1 = TextStyle(
  color: Colors.amber,
  fontFamily: "Cormorant",
  fontSize: 22,
);

class homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff142850),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      10,
                    ),
                    bottomRight: Radius.circular(10)),
              ),
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "👋🏻 Привет $nameUser,\nЯ рад тебя снова видеть!",
                            style: colorsWhite,
                          ),
                        ],
                      ),
                      Image.asset(
                        "$assetsImage/user.png",
                        width: 70,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "✍️",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                sizedBox50(),
                Text(
                  "Категории",
                  style: colorsBlack,
                ),
              ],
            ),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }
}
