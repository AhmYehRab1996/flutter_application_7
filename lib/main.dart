import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "Ahmed Yehia",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 119, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              color: Color.fromARGB(255, 255, 255, 255),
              margin: EdgeInsets.only(top: 20),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 66, 124, 211))),
                    child: SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      color: Color.fromARGB(255, 66, 124, 211),
                      height: 35,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 66, 124, 211))),
                    child: SvgPicture.asset(
                      "assets/icons/instagram.svg",
                      color: Color.fromARGB(255, 66, 124, 211),
                      height: 35,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 66, 124, 211))),
                    child: SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      color: Color.fromARGB(255, 66, 124, 211),
                      height: 35,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
