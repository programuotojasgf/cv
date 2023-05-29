import 'package:flutter/material.dart';

class CvAppBarFactory {
  static const double _nameFontSize = 20;
  static const double _titleFontSize = _nameFontSize / 1.5;

  static PreferredSizeWidget create(BuildContext context) => AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      centerTitle: true,
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gediminas Fridricas',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: _nameFontSize,
            ),
          ),
          Text(
            'Senior Software Engineer',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: _titleFontSize,
            ),
          ),
        ],
      ));
}
