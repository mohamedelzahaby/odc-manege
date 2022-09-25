import 'package:flutter/material.dart';
import 'package:orange/view/components/setting/addnotes.dart';
import 'package:orange/view/components/setting/faq.dart';
import 'package:orange/view/components/setting/ourpartenrs.dart';
import 'package:orange/view/components/setting/support.dart';
import 'package:orange/view/components/setting/terms.dart';
import 'package:orange/view/pages/login.dart';
import 'package:orange/view/pages/news.dart';

void main() {
  runApp(const setting());
}

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final elevatedButtonStyle = ElevatedButton.styleFrom(primary: Colors.white);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "setting",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fqa()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text(
                    "FAQ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  )
                ]),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              endIndent: 10,
              indent: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => terms()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text(
                    "Terms & conditions",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  )
                ]),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              endIndent: 10,
              indent: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => our()),
                );
              },
              child: (Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text(
                    "Our Partenrs",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  )
                ]),
              )),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              endIndent: 10,
              indent: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => support()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text(
                    "Support",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  )
                ]),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              endIndent: 10,
              indent: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login_screen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
