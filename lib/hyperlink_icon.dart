import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperlinkIcon extends StatelessWidget {
  final String iconFilePath;
  final String uriString;

  const HyperlinkIcon(
      {super.key, required this.iconFilePath, required this.uriString});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: _launchUri,
        icon: Image.asset(
          iconFilePath,
          width: 24,
          height: 24,
        ),
      );

  Future<void> _launchUri() async {
    final Uri uri = Uri.parse(uriString);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
