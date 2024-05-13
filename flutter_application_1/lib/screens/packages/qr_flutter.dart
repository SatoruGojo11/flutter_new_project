import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class QrFlutterScreen extends StatefulWidget {
  const QrFlutterScreen({super.key});

  @override
  State<QrFlutterScreen> createState() => _QrFlutterScreenState();
}

class _QrFlutterScreenState extends State<QrFlutterScreen> {
  String screenName = 'QR Flutter Screen';
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
