import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

class EnviarDados extends StatefulWidget {
  const EnviarDados({Key? key}) : super(key: key);

  @override
  _EnviarDadosState createState() => _EnviarDadosState();
}

class _EnviarDadosState extends State<EnviarDados> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Calendario(),
    );
  }
}

class Calendario extends StatelessWidget {
  Calendario({Key? key}) : super(key: key);

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Column(
        children: [
          TableCalendar(
            locale: 'pt_BR',
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: format,
            // onFormatChanged: (CalendarFormat _format) {
            //   setState(() {
            //     format = _format;
            //   });
            // },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,
            pageAnimationEnabled: false,
            // onDaySelected: (DateTime selectDay, DateTime focusDay) {
            //   setState(() {
            //     selectedDay = selectDay;
            //     focusedDay = focusDay;
            //   });
            // },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: false,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              formatButtonPadding:
                  EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              formatButtonTextStyle: TextStyle(
                color: Colors.white,
              ),
              leftChevronVisible: false,
              rightChevronVisible: false,
              headerPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
