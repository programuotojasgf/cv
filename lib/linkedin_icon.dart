import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInIcon extends StatelessWidget {
  const LinkedInIcon({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: _launchLinkedIn,
        icon: Image.asset(
          './assets/icons/LinkedIn.png',
          width: 24,
          height: 24,
        ),
      );

  Future<void> _launchLinkedIn() async {
    final Uri uri =
        Uri.parse('https://www.linkedin.com/in/gediminas-fridricas/');
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
