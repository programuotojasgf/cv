import 'package:cv/hyperlink_icon.dart';
import 'package:flutter/material.dart';

class LinkedInIcon extends StatelessWidget {
  const LinkedInIcon({super.key});

  @override
  Widget build(BuildContext context) => const HyperlinkIcon(
      iconFilePath: './assets/icons/LinkedIn.png',
      uriString: 'https://www.linkedin.com/in/gediminas-fridricas/');
}
