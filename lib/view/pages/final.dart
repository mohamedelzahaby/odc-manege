import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view_model/section_cubit/cubit/sections_cubit.dart';

void main() {
  runApp(const finals());
}

class finals extends StatelessWidget {
  const finals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => SectionsCubit()..show(),
        child: BlocConsumer<SectionsCubit, SectionsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SectionsCubit s = SectionsCubit.get(context);
            return Scaffold(
              backgroundColor: Colors.grey[300],
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  "Finals",
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
                      MaterialPageRoute(builder: (context) => homepage()),
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
              body: s.s1 == null
                  ? Text('loading')
                  : ListView.builder(
                      itemCount: s.s1!.data!.length,
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
                                            s.s1!.data![index].sectionSubject
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
                                              s.s1!.data![index].sectionDate
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
                                              s.s1!.data![index]
                                                  .sectionStartTime
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
                                              s.s1!.data![index].sectionEndTime
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
