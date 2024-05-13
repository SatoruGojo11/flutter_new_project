import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class EasyDebounceScreen extends StatefulWidget {
  const EasyDebounceScreen({super.key});

  @override
  State<EasyDebounceScreen> createState() => _EasyDebounceScreenState();
}

class _EasyDebounceScreenState extends State<EasyDebounceScreen> {
  String screenName = 'Easy Debounce Screen';
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
