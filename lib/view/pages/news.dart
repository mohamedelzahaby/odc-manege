import 'package:flutter/material.dart';

void main() {
  runApp(const news());
}

class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
              ),
              Text(
                "News",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 370,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ],
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fill,
                      width: 370,
                    ),
                    Positioned(
                      child: Text(
                        "ODCs",
                        style: TextStyle(color: Colors.orange, fontSize: 20),
                      ),
                      top: 15,
                      left: 8,
                    ),
                    Positioned(
                      top: 5,
                      right: 10,
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.access_time_filled,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 5,
                        bottom: 5,
                        child: Text(
                          "ODC Support All Universities",
                          style: TextStyle(color: Colors.orange, fontSize: 20),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
