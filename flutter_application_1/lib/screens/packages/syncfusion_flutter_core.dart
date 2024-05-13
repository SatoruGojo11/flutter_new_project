import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class SyncfusionFlutterCoreScreen extends StatefulWidget {
  const SyncfusionFlutterCoreScreen({super.key});

  @override
  State<SyncfusionFlutterCoreScreen> createState() =>
      _SyncfusionFlutterCoreScreenState();
}

class _SyncfusionFlutterCoreScreenState
    extends State<SyncfusionFlutterCoreScreen> {
  String screenName = 'Syncfusion Flutter Core Screen';
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
