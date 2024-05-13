import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class TableCalenderScreen extends StatefulWidget {
  const TableCalenderScreen({super.key});

  @override
  State<TableCalenderScreen> createState() => _TableCalenderScreenState();
}

class _TableCalenderScreenState extends State<TableCalenderScreen> {
  String screenName = 'Table Calender Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
      ),
      body: Center(
        child: text('This is $screenName'),
      ),
    );
  }
}
