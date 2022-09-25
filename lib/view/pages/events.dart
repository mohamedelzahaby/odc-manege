import 'package:flutter/material.dart';
import 'package:orange/view/pages/home.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(const events());
}

class events extends StatelessWidget {
  const events({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Midterms",
                style: TextStyle(
                    fontSize: 20,
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
                    MaterialPageRoute(builder: (context) => homepage()),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.orange,
                ),
              ),
            ),
            body: SfCalendar(
              view: CalendarView.month,
              timeSlotViewSettings:
                  TimeSlotViewSettings(timeIntervalHeight: -1),
              // dataSource: Meetingdatesource(getAppointments()),
            )));
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, 9, 20, today.hour);
  final DateTime endTime = startTime.add(const Duration(days: 1));
  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'event',
      color: Colors.orange));
  return meetings;
}

class Meetingdatesource extends CalendarDataSource {
  meetingdatesource(List<Appointment> Source) {
    appointments = Source;
  }
}
