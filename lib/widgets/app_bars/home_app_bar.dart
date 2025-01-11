import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar homeAppBar() => AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/svg/icons/vector.svg",
          width: 24.0,
          height: 24.0,
        ),
      ),
      title: Text(
        "August",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/svg/icons/calendar.svg',
            width: 24.0,
            height: 24.0,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 0,
    );
