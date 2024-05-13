import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class DropDownTextFieldScreen extends StatefulWidget {
  const DropDownTextFieldScreen({super.key});

  @override
  State<DropDownTextFieldScreen> createState() =>
      _DropDownTextFieldScreenState();
}

class _DropDownTextFieldScreenState extends State<DropDownTextFieldScreen> {
  String screenName = 'DropDown TextField Screen';
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
