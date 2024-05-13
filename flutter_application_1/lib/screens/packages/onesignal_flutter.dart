import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class OneSignalFlutterScreen extends StatefulWidget {
  const OneSignalFlutterScreen({super.key});

  @override
  State<OneSignalFlutterScreen> createState() => _OneSignalFlutterScreenState();
}

class _OneSignalFlutterScreenState extends State<OneSignalFlutterScreen> {
  String screenName = 'One Signal Flutter Screen';
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
