import 'package:flutter/material.dart';
import 'hyperlink_icon.dart';

class GitHubIcon extends StatelessWidget {
  const GitHubIcon({super.key});

  @override
  Widget build(BuildContext context) => const HyperlinkIcon(
      iconFilePath: './assets/icons/GitHub.png',
      uriString: 'https://github.com/programuotojasgf/cv');
}
