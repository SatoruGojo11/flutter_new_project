import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class FlutterExpandableFabScreen extends StatefulWidget {
  const FlutterExpandableFabScreen({super.key});

  @override
  State<FlutterExpandableFabScreen> createState() =>
      _FlutterExpandableFabScreenState();
}

class _FlutterExpandableFabScreenState
    extends State<FlutterExpandableFabScreen> {
  String screenName = 'Flutter Expandable Fab Screen';
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
