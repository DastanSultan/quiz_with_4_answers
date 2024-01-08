import 'package:flutter/material.dart';
import 'package:quiz_with_4_answers/item/home.dart';
import 'package:quiz_with_4_answers/widget/widgets.dart';

class start extends StatefulWidget {
  startState createState() => startState();
}

String assetsImage = "assets/images";
String nameUser = "";
TextEditingController controller = TextEditingController();
String resultv = "Билиминизди сынап корунуз";

class startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xfffFCDEC0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "$assetsImage/puzzle.png",
                  width: 100,
                ),
                sizedBox50(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(labelText: "Как ваше имя?"),
                    onChanged: (value) {
                      setState(() {
                        nameUser = controller.text;
                      });
                    },
                  ),
                ),
                sizedBox50(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(
                            nameUser: nameUser,
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text("Продолжить"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
