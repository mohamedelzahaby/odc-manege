import 'package:flutter/material.dart';
import 'package:orange/view/components/setting/notes.dart';
import 'package:orange/view/pages/home.dart';

void main() {
  runApp(const support());
}

class support extends StatelessWidget {
  const support({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Support",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all<Size>(Size(10, 10)),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notes()),
                );
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.orange,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Name',
                    ),

                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 8.0, right: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'E-mail',
                    ),

                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 8.0, right: 8.0),
                  child: TextFormField(
                    minLines: 6,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'whats making you unhappy?',
                    ),

                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(25, 25)),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.orange,
                      )),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'submit',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
