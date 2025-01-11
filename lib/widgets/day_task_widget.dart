import 'package:flutter/material.dart';

class DayTaskWidget extends StatelessWidget {
  const DayTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFFF981F),
          ),
          child: Text(
            "Medium",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Text(
          " - Chance of getting pregnant",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
