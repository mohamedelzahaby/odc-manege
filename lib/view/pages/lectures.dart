// ignore_for_file: prefer_const_literals_to_create_immutables, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/view/components/setting/navbar.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view/pages/login.dart';
import 'package:orange/view_model/lectures_cubit/cubit/lectures_cubit.dart';
import 'package:orange/view_model/section_cubit/cubit/sections_cubit.dart';

void main() {
  runApp(const lectures());
}

class lectures extends StatelessWidget {
  const lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => LecturesCubit()..shoo(),
        child: BlocConsumer<LecturesCubit, LecturesState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LecturesCubit s = LecturesCubit.get(context);
            return Scaffold(
              backgroundColor: Colors.grey[300],
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  "lectures",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(10, 10)),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Example()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.orange,
                  ),
                ),
                actions: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.help,
                    color: Colors.orange,
                  ),
                ],
              ),
              body: s.l1 == null
                  ? Text('loading....')
                  : ListView.builder(
                      itemCount: s.l1!.data!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            s.l1!.data![index].lectureSubject
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Spacer(
                                            flex: 1,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Icon(Icons.access_alarm),
                                          ),
                                          Text("2hrs"),
                                        ],
                                      ),
                                      Column(children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Section Day',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Text('Start Time'),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Text('End Time'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.calendar_month),
                                            Text(
                                              s.l1!.data![index].lectureDate
                                                  .toString(),
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Icon(
                                                Icons
                                                    .access_time_filled_outlined,
                                                color: Colors.green),
                                            Text(
                                              s.l1!.data![index]
                                                  .lectureStartTime
                                                  .toString(),
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Icon(
                                              Icons.access_time_filled_outlined,
                                              color: Colors.red,
                                            ),
                                            Text(
                                              s.l1!.data![index].lectureEndTime
                                                  .toString(),
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
            );
          },
        ),
      ),
    );
  }
}
