import 'package:flutter/material.dart';
import 'package:orange/view/pages/login.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const splash());
}

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Text(
                    'Orange ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  Text('Digital Center',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 60.0, top: 30, left: 40.0),
              child: LinearPercentIndicator(
                  onAnimationEnd: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login_screen()),
                    );
                  },
                  animation: true,
                  lineHeight: 5.0,
                  animationDuration: 2000,
                  percent: 1,
                  progressColor: Colors.orange,
                  barRadius: Radius.circular(20.0)),
            ),
          ]),
        ),
      )),
    );
  }
}
