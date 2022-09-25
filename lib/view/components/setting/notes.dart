import 'package:flutter/material.dart';
import 'package:orange/view/components/setting/addnotes.dart';
import 'package:orange/view/pages/home.dart';

void main() {
  runApp(const notes());
}

class notes extends StatelessWidget {
  const notes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
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
                MaterialPageRoute(builder: (context) => homepage()),
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            ),
          ),
          title: Text(
            'Notes',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Center(
            child: Text(
          'Theres No Data To Show',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        )),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => addnotes()),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            )),
      ),
    );
  }
}
