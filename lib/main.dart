import 'package:calendar_example/admin_panel.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const CalendarApp());
}

/// The app which hosts the home page which contains the calendar on it.
class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calendar Demo',
        home: AdminPanel());
  }
}
