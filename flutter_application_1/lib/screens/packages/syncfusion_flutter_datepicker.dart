import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class SyncfusionFlutterDatePickerScreen extends StatefulWidget {
  const SyncfusionFlutterDatePickerScreen({super.key});

  @override
  State<SyncfusionFlutterDatePickerScreen> createState() =>
      _SyncfusionFlutterDatePickerScreenState();
}

class _SyncfusionFlutterDatePickerScreenState
    extends State<SyncfusionFlutterDatePickerScreen> {
  String screenName = 'SyncFusion Flutter DatePicker Screen';
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
