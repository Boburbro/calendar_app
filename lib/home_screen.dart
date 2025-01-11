import 'widgets/app_bars/home_app_bar.dart';
import 'widgets/day_task_widget.dart';
import 'widgets/day_tile_widget.dart';
import 'widgets/my_table_calendar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: Column(
        children: [
          MyTableCalendarWidget(),
          // Divider(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              spacing: 8,
              children: [
                DayTileWidget(),
                Divider(color: Colors.grey[100]),
                DayTaskWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
