import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:test_hello_cse/src/application/movies_provider.dart';
import 'src/presentation/navigation.dart';

void main() async {

  initializeDateFormatting();
  Intl.defaultLocale = "fr"; 
  runApp(
    ChangeNotifierProvider<MoviesNotifier>(
      create: (context) => MoviesNotifier(),
      child: const MaterialApp(
        home: Navigation(),
      )
    ),
  );
}
