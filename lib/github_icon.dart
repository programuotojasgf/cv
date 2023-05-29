import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubIcon extends StatelessWidget {
  const GitHubIcon({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: _launchGitHub,
        icon: Image.asset(
          './assets/icons/GitHub.png',
          width: 24,
          height: 24,
        ),
      );

  Future<void> _launchGitHub() async {
    final Uri uri = Uri.parse('https://github.com/programuotojasgf/cv');
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
