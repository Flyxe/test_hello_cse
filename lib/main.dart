import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'src/app.dart';

void main() async {

  initializeDateFormatting();
  Intl.defaultLocale = "fr"; 
  runApp(const MyApp());
}
