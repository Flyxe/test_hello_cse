import 'package:flutter/material.dart';
import 'package:test_hello_cse/src/services/api_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    ApiService().getMovies();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Text("Home");
  }
}