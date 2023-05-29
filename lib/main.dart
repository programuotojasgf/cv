import 'package:cv/content.dart';
import 'package:flutter/material.dart';

import 'cv_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const adrBlue = Color(0xff26718f);
    return MaterialApp(
      title: 'Gediminas Fridricas CV',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: adrBlue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CvAppBarFactory.create(context),
        body: const ContentPage(),
      );
}
