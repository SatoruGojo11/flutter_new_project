import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class ScreenBrightnessScreen extends StatefulWidget {
  const ScreenBrightnessScreen({super.key});

  @override
  State<ScreenBrightnessScreen> createState() => _ScreenBrightnessScreenState();
}

class _ScreenBrightnessScreenState extends State<ScreenBrightnessScreen> {
  String screenName = 'Screen Brightness Screen';
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
