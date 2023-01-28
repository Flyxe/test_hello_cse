import 'package:flutter/material.dart';
import 'screens/navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Navigation(),
    );
  }
}
