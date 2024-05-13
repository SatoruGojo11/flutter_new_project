import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class OpenFilexScreen extends StatefulWidget {
  const OpenFilexScreen({super.key});

  @override
  State<OpenFilexScreen> createState() => _OpenFilexScreenState();
}

class _OpenFilexScreenState extends State<OpenFilexScreen> {
  String screenName = 'Open Filex Screen';
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
