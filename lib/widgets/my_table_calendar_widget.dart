import '../models/day_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

class MyTableCalendarWidget extends StatelessWidget {
  MyTableCalendarWidget({super.key});

  final Map<DateTime, DayStatus> _events = {
    DateTime.utc(2024, 12, 29): DayStatus.good,
    DateTime.utc(2024, 12, 30): DayStatus.good,
    DateTime.utc(2024, 12, 31): DayStatus.good,
    DateTime.utc(2025, 1, 1): DayStatus.good,
    DateTime.utc(2025, 1, 2): DayStatus.good,
    DateTime.utc(2025, 1, 3): DayStatus.normal,
    DateTime.utc(2025, 1, 4): DayStatus.good,
    DateTime.utc(2025, 1, 17): DayStatus.bad,
    DateTime.utc(2025, 1, 18): DayStatus.bad,
    DateTime.utc(2025, 1, 19): DayStatus.bad,
    DateTime.utc(2025, 1, 20): DayStatus.bad,
    DateTime.utc(2025, 1, 27): DayStatus.normal,
  };

  String getStatusSvg(DayStatus? status) {
    switch (status) {
      case DayStatus.good:
        return 'assets/svg/status/good.svg';
      case DayStatus.normal:
        return 'assets/svg/status/normal.svg';
      case DayStatus.bad:
        return 'assets/svg/status/bad.svg';
      case DayStatus.pure:
        return '';
      case null:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarBuilders: CalendarBuilders(
        prioritizedBuilder: (context, day, focusedDay) {
          var status = getStatusSvg(_events[day]);
          return Padding(
            padding: const EdgeInsets.all(1),
            child: ColoredBox(
              color: _events[day] == DayStatus.bad
                  ? Color(0xFFFF699C)
                  : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          day.day.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: _events[day] == DayStatus.bad
                                ? Colors.white
                                : null,
                            fontWeight: DateTime.now().month == day.month
                                ? FontWeight.w500
                                : FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    status != "" ? SvgPicture.asset(status) : SizedBox()
                  ],
                ),
              ),
            ),
          );
        },
      ),
      headerVisible: false,
      focusedDay: DateTime.now(),
      firstDay: DateTime(2000),
      lastDay: DateTime(2100),
    );
  }
}
