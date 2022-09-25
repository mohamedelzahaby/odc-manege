// ignore_for_file: depend_on_referenced_packages, unused_element, prefer_const_constructors, non_constant_identifier_names

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/main.dart';
import 'package:orange/view/components/setting/addnotes.dart';
import 'package:orange/view/components/setting/notes.dart';
import 'package:orange/view/pages/events.dart';
import 'package:orange/view/pages/lectures.dart';
import 'package:orange/view/pages/section.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'final.dart';
import 'midTerms.dart';

void main() {
  runApp(const homepage());
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
// List<widget>
// List<widget>Screen(){
//         return homepage()
//       }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ElevatedButtonstyle = ElevatedButton.styleFrom(
      primary: Colors.white,
      shadowColor: (Colors.black),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Orange ",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Digital Center",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 20.0, right: 5.0),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => lectures()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/lecture.svg',
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Lectures',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => section()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/sections.svg',
                                color: Colors.orange,
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Sections',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 20.0, right: 5.0),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mid()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/midterm.svg',
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Midterms',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    top: 20.0,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => finals()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/final.svg',
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Finals',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => events()));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/event.svg',
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Events',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButtonstyle,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => notes()));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                'assets/icons/notes.svg',
                                width: 50,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Notes',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // PersistentTabView(
            //   context,
            //   screens: screens(),
            //   items: navBarItems(),

            // )
          ],
        ),
      ),
    );
    // ignore: dead_code
//     Screens s = new Screens();
//     PersistentTabView(
//       context,
//       screens: Screens(),
//       items: Items(),
//       navBarStyle: NavBarStyle.style1,
//     );
//     // ignore: dead_code
//     List<Widget> Screens() {
//       return [homepage()];
//     }

//     List<PersistentBottomNavBarItem> Items() {
//       return [
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.home),
//           title: ("Home"),
//           activeColorPrimary: Colors.orange,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.newspaper),
//           title: ("Home"),
//           activeColorPrimary: Colors.orange,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.settings),
//           title: ("Home"),
//           activeColorPrimary: Colors.orange,
//         )
//       ];
//     }
//   }
// }
  }
}
