import 'package:flutter/material.dart';
import 'package:orange/view/components/setting/notes.dart';
import 'package:orange/view/pages/home.dart';

void main() {
  runApp(const addnotes());
}

class addnotes extends StatelessWidget {
  const addnotes({Key? key}) : super(key: key);

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
              "notes",
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter Title',
                      labelText: 'Title',
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'time.now',
                      labelText: 'Date',
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
                      hintText: 'Enter Note',
                      labelText: 'Note',
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
                        Colors.grey,
                      )),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      '+  Add',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
