import 'package:flutter/material.dart';

import 'under_constructions_part/under_construction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbirDev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const UnderConstructionScreen(),
    );
  }
}