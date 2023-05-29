import 'package:cv/linkedin_icon.dart';
import 'package:flutter/material.dart';

class CvAppBarFactory {
  static const double _nameFontSize = 20;
  static const double _titleFontSize = _nameFontSize / 1.5;

  static PreferredSizeWidget create(BuildContext context) => AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [LinkedInIcon()],
            ),
            Column(
              children: [
                _NameText(nameFontSize: _nameFontSize),
                _TitleText(titleFontSize: _titleFontSize),
              ],
            ),
            Column(
              children: [LinkedInIcon()],
            ),
          ],
        ),
      );
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    super.key,
    required double titleFontSize,
  }) : _titleFontSize = titleFontSize;

  final double _titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Senior Software Engineer',
      style: TextStyle(
        fontFamily: "Montserrat",
        fontSize: _titleFontSize,
      ),
    );
  }
}

class _NameText extends StatelessWidget {
  const _NameText({
    super.key,
    required double nameFontSize,
  }) : _nameFontSize = nameFontSize;

  final double _nameFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Gediminas Fridricas',
      style: TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.bold,
        fontSize: _nameFontSize,
      ),
    );
  }
}
