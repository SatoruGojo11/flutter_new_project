import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class WebViewFlutterScreen extends StatefulWidget {
  const WebViewFlutterScreen({super.key});

  @override
  State<WebViewFlutterScreen> createState() => _WebViewFlutterScreenState();
}

class _WebViewFlutterScreenState extends State<WebViewFlutterScreen> {
  String screenName = 'Web View Flutter Screen';
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
