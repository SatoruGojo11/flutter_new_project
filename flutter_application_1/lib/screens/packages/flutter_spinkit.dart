import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class FlutterSpinkitScreen extends StatefulWidget {
  const FlutterSpinkitScreen({super.key});

  @override
  State<FlutterSpinkitScreen> createState() => _FlutterSpinkitScreenState();
}

class _FlutterSpinkitScreenState extends State<FlutterSpinkitScreen> {
  String screenName = 'Flutter Spinkit Screen';
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
