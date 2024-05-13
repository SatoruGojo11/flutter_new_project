import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class StepProgressIndicatorScreen extends StatefulWidget {
  const StepProgressIndicatorScreen({super.key});

  @override
  State<StepProgressIndicatorScreen> createState() =>
      _StepProgressIndicatorScreenState();
}

class _StepProgressIndicatorScreenState
    extends State<StepProgressIndicatorScreen> {
  String screenName = 'Step Progress Indicator Screen';
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
